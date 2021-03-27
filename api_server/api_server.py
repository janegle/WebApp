from fastapi import Depends, FastAPI, HTTPException
from fastapi.security import OAuth2PasswordBearer
from fastapi.staticfiles import StaticFiles
import uvicorn
from typing import List
from controllers.search import SearchEngine
from controllers.login import Login
from controllers.add_course import AddCourseController
from controllers.drop_course import DropCourseController
from utilities.query_object_attributes import *
from pymongo import MongoClient
from utilities.api_output_types import *

db = DBConnection()
db.open_connection()

client = MongoClient()
mgdb = client.mgdb
db_course_description = mgdb.course_description

app = FastAPI()

app.mount("/web", StaticFiles(directory="../web/build", html=True), name="web")

# relative url equivalent to ./token
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")


# helper function to authenticate user at each endpoint after user logs in
def authenticate(token):
    auth = Login(db)
    if not auth.check_token(token):
        raise HTTPException(status_code=400, detail="Unauthorized user")
    return auth


@app.post("/token")
async def log_in(
        login_info: LoginInfo
):
    auth = Login(db)
    if not auth.is_authenticated_user(login_info.user_name, login_info.password):
        raise HTTPException(status_code=400, detail="Incorrect username or password")
    else:
        user = auth.get_user(login_info.user_name, login_info.password)
        token = auth.get_token(user.get_id())
        role = auth.get_role(user.get_id())
        output = {"access_token": token,
                  "token_type": "bearer",
                  "user_name": login_info.user_name,
                  "name": user.get_name(),
                  "id": user.get_id(),
                  "role": role}
        if role == "faculty":
            return output

        if role == "student":
            output["restriction"] = user.get_restriction()
            return output


@app.get("/api/faculty/course", response_model=List[CourseInfo])
def get_courses(
        token: str = Depends(oauth2_scheme)
):
    auth = authenticate(token)

    faculty = auth.check_token(token)
    query_result = faculty.get_courses(db)
    output = convert_course_object(query_result)
    return output


@app.get("/api/faculty/student", response_model=List[StudentInfo])
def get_students(
        course_id: int,
        token: str = Depends(oauth2_scheme)
):
    auth = authenticate(token)

    faculty = auth.check_token(token)
    query_result = faculty.get_students(db, course_id)
    output = convert_student_object(query_result)
    return output


@app.post("/api/faculty/grade")
async def enter_grade(
        grade: str,
        course_id: int,
        student_id: int,
        token: str = Depends(oauth2_scheme)
):
    auth = authenticate(token)

    faculty = auth.check_token(token)
    faculty.enter_grades(db, grade, student_id, course_id)
    return {"message": "Grade successfully updated!"}


@app.get("/api/search", response_model=List[CourseInfoDescription])
def search(
        query_type: str,
        user_input: str,
        token: str = Depends(oauth2_scheme)
):
    authenticate(token)

    search_engine = SearchEngine(db)
    search_result = search_engine.search(query_type, user_input)
    course_info_no_description = convert_course_object(search_result)
    course_info_with_description = get_course_description(course_info_no_description, "course_id", "course_description",
                                                          db_course_description)

    return course_info_with_description


@app.get("/api/registeredCourses", response_model=List[GradeAndStatusInfo])
def register(
        token: str = Depends(oauth2_scheme)
):
    auth = authenticate(token)

    user = auth.check_token(token)
    output = user.view_grades_and_status(db)
    return output


@app.get("/logout")
async def log_out(
        token: str = Depends(oauth2_scheme)
):
    auth = authenticate(token)

    user = auth.check_token(token)
    auth.log_out(user.get_id())
    return {"success": True}


@app.post("/api/add")
async def add(
        course_id: int,
        token: str = Depends(oauth2_scheme)
):
    auth = authenticate(token)

    user = auth.check_token(token)
    add_engine = AddCourseController(db, user)
    if not add_engine.less_than_enrollment_limit(course_id):
        return {"message": "Max enrollment reached"}
    if add_engine.time_conflict(course_id):
        return {"message": "You have a time conflict with another class"}
    if add_engine.course_already_added(course_id):
        return {"message": "This course has already been added"}
    if add_engine.has_restriction():
        return {"message": "You have a restriction. You cannot register until the restriction is lifted."}
    if not add_engine.check_current_quarter(course_id):
        return {"message": "This course is not for the current quarter"}

    status = add_engine.add_course(course_id)
    if status == "Confirmed":
        return {"message": "Course successfully added!"}
    if status == "Pending":
        return {"message": "Course pending approval"}


@app.post("/api/drop")
async def drop(
        course_id: int,
        token: str = Depends(oauth2_scheme)
):
    auth = authenticate(token)

    user = auth.check_token(token)
    drop_engine = DropCourseController(db, user)
    drop_engine.drop_course(course_id)
    return {"message": "Course successfully dropped!"}


@app.post("/api/password")
async def update_password(
        new_password: str,
        token: str = Depends(oauth2_scheme)
):
    auth = authenticate(token)

    user = auth.check_token(token)
    user.update_password(new_password, user.get_id(), db)
    return {"message": "Password successfully updated"}


if __name__ == "__main__":
    uvicorn.run("api_server:app")

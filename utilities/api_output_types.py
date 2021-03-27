from pydantic import BaseModel
from typing import List


class CourseInfo(BaseModel):
    course_id: int
    prefix: str
    course_num: int
    course_name: str
    quarter: str
    year_offered: int
    day_offered: str
    time_start: str
    time_end: str
    section_offered: int
    max_enrollment: int


class GradeAndStatusInfo(CourseInfo):
    grade: str
    status: str


class CourseInfoDescription(CourseInfo):
    course_description: List[str]


class LoginInfo(BaseModel):
    user_name: str
    password: str


class StudentInfo(BaseModel):
    UCID: int
    student_name: str
    student_grade: str

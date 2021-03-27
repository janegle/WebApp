from utilities.database_connection import DBConnection
from models.faculty_interface import FacultyInterface
from models.user import User
from utilities.current_quarter import *


class Faculty(User, FacultyInterface):
    def __init__(self, faculty_id: int, name: str):
        super().__init__(faculty_id, name)

    def enter_grades(self, db: DBConnection, grade: str, student_id: int, course_id: int):
        query = "UPDATE student_course "
        main_query = "SET grade = '{}' WHERE UCID = {} AND course_id = {};"
        query += main_query.format(grade, student_id, course_id)
        db.execute_query(query)

    # def get_restriction(self):
    #     return ""

    def get_courses(self, db: DBConnection):
        query = (r'''SELECT course.course_id, course.prefix, course.course_num, course.course_name,
        course.quarter, course.year_offered,
        course.day_offered, course.time_start, course.time_end,
        course.section_offered, course.max_enrollment
        FROM faculty_course
        INNER JOIN faculty
        ON faculty_course.faculty_id = faculty.faculty_id
        INNER JOIN course
        ON course.course_id = faculty_course.course_id ''')
        main_query = "WHERE faculty.faculty_id = {} AND quarter = '{}' AND year_offered = {} ORDER BY course_num ASC;"
        query += main_query.format(self.get_id(), QUARTER, YEAR_OFFERED)
        results = db.execute_query(query)
        return results

    def get_students(self, db: DBConnection, course_id: int):
        query = (r'''SELECT student.UCID, student.name, student_course.grade
        FROM faculty_course
        INNER JOIN student_course
        ON student_course.course_id = faculty_course.course_id
        INNER JOIN student
        ON student.UCID = student_course.UCID
        ''')
        main_query = "WHERE faculty_course.course_id = {};"
        query += main_query.format(course_id)
        results = db.execute_query(query)
        return results

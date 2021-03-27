from utilities.database_connection import DBConnection
from models.student import Student
from utilities.query_object_attributes import *
from utilities.current_quarter import *
from controllers.overload import send_overload_email


class AddCourseController:
    def __init__(self, db: DBConnection, student: Student):
        """
        Purpose: Initialize add engine.
        Inputs:
            db (class): a class responsible for connecting with the database
            student (class)
        Outputs: None
        """
        self.db = db
        self.student = student

    # Check if student already registers for another class occurring at the same time
    def time_conflict(self, course_id: int):
        existing_courses = (r'''SELECT course.course_id, course.prefix, course.course_num, course.quarter, course.year_offered,
                course.day_offered, course.time_start, course.time_end, course.section_offered, course.max_enrollment
                FROM student_course
                INNER JOIN student
                ON student.UCID = student_course.UCID
                INNER JOIN course
                ON course.course_id = student_course.course_id
                ''')
        main_query_existing_courses = "WHERE quarter = '{}' AND year_offered = {} AND student.UCID = {} ORDER BY course_id ASC;"
        existing_courses += main_query_existing_courses.format(QUARTER, YEAR_OFFERED, self.student.get_id())
        result_existing_courses = self.db.execute_query(existing_courses)

        result_new_course = query_course_info(course_id, self.db)
        day_new_course = result_new_course[0]['day_offered']
        time_start_new_course = result_new_course[0]['time_start']
        time_end_new_course = result_new_course[0]['time_end']

        if len(result_existing_courses) == 0:
            return False
        else:
            for i in range(len(result_existing_courses)):
                day_existing_course = result_existing_courses[i][5]
                time_start_existing_course = result_existing_courses[i][6]
                time_end_existing_course = result_existing_courses[i][7]

                if day_new_course == day_existing_course:
                    if time_start_new_course == time_start_existing_course and time_end_new_course == time_end_existing_course:
                        return True
                    if time_end_new_course == "1330" and time_start_existing_course == "1300":
                        return True
                    if time_end_existing_course == "1330" and time_start_new_course == "1300":
                        return True
        return False

    def check_max_enrollment(self, course_id: int):
        max_enrollment_query = "SELECT max_enrollment FROM course "
        max_enrollment_main_query = "WHERE course_id = {};"
        max_enrollment_query += max_enrollment_main_query.format(course_id)
        return max_enrollment_query

    def check_current_enrollment(self, course_id: int):
        current_enrollment_query = "SELECT count(*) FROM student_course "
        current_enrollment_main_query = "WHERE course_id = {};"
        current_enrollment_query += current_enrollment_main_query.format(course_id)
        return current_enrollment_query

    # Check if a class has reached the enrollment limit
    def less_than_enrollment_limit(self, course_id: int):
        results = []
        query1 = self.check_max_enrollment(course_id)
        results.append(self.db.execute_query(query1))
        query2 = self.check_current_enrollment(course_id)
        results.append(self.db.execute_query(query2))

        if results[0] == results[1]:
            print("Max enrollment reached")
            return False
        return True

    # Check if student has any restriction
    def has_restriction(self):
        if self.student.get_restriction() == "No restriction":
            return False
        else:
            return True

    # Check if student already registers for a course
    def course_already_added(self, course_id: int):
        query = "SELECT count(*) FROM student_course "
        main_query = "WHERE course_id = {} AND UCID = {};"
        query += main_query.format(course_id, self.student.get_id())
        result = self.db.execute_query(query)
        if result[0][0] == 0:
            return False
        else:
            return True

    # Check the number of classes a student already registers for
    def overload_courses(self):
        query = (r'''SELECT count(*)
                FROM student_course
                INNER JOIN student
                ON student.UCID = student_course.UCID
                INNER JOIN course
                ON course.course_id = student_course.course_id
                ''')
        main_query = "WHERE quarter = '{}' AND year_offered = {} AND student.UCID = {};"
        query += main_query.format(QUARTER, YEAR_OFFERED, self.student.get_id())
        result = self.db.execute_query(query)
        if result[0][0] >= 3:
            # for simplicity purpose, I assume a student's email is his/her UCID plus @uchicago.edu
            # student_email = str(self.student.get_id()) + "@uchicago.edu"
            # overload()
            return True
        return False

    # Check that a course is for the current quarter
    def check_current_quarter(self, course_id: int):
        query = "SELECT quarter, year_offered FROM course "
        main_query = "WHERE course_id = {};"
        query += main_query.format(course_id)
        result = self.db.execute_query(query)
        if result[0][0] == QUARTER and result[0][1] == YEAR_OFFERED:
            return True
        else:
            return False

    def add_course(self, course_id: int):
        # If all the requirements are satisfied, student can add course to their schedule
        if self.less_than_enrollment_limit(course_id) and not self.has_restriction() \
                and not self.course_already_added(course_id) and not self.time_conflict(course_id) \
                and self.check_current_quarter(course_id):
            query = "INSERT INTO student_course "
            main_query = "VALUE ({},{},'','{}');"
            if self.overload_courses():
                send_overload_email()
                query += main_query.format(self.student.get_id(), course_id, "Pending")
                self.db.execute_query(query)
                return "Pending"
            else:
                query += main_query.format(self.student.get_id(), course_id, "Confirmed")
                self.db.execute_query(query)
                return "Confirmed"

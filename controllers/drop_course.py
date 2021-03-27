from utilities.database_connection import DBConnection
from models.student import Student


class DropCourseController:
    def __init__(self, db: DBConnection, student: Student):
        """
        Purpose: Initialize drop engine.
        Inputs:
            db (class): a class responsible for connecting with the database
            student (class)
        Outputs: None
        """
        self.db = db
        self.student = student

    def drop_course(self, course_id: int):
        query = "DELETE FROM student_course "
        main_query = "WHERE UCID = {} AND course_id = {};"
        query += main_query.format(self.student.get_id(), course_id)
        # Execute query
        self.db.execute_query(query)

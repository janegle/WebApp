from utilities.database_connection import DBConnection
from models.user import User
from models.student_interface import StudentInterface
from utilities.query_object_attributes import *


class Student(User, StudentInterface):
    def __init__(self, student_id: int, name: str, restriction: str):
        super().__init__(student_id, name)
        self.__restriction = restriction

    def get_restriction(self):
        return self.__restriction

    def view_grades_and_status(self, db: DBConnection):
        query = "SELECT * FROM student_course "
        main_query = "WHERE UCID = {};"
        query += main_query.format(self.get_id())
        results = db.execute_query(query)

        output = [{
            'course_data': query_course_info(x[1], db),
            'grade': x[2],
            'status':x[3]
        } for x in results]

        display = [x['course_data'][0] for x in output]
        for i in range(len(output)):
            display[i]['grade'] = output[i]['grade']
            display[i]['status'] = output[i]['status']

        return display


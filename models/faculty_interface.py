from abc import ABC, abstractmethod
from utilities.database_connection import DBConnection


class FacultyInterface(ABC):

    @abstractmethod
    def enter_grades(self, db: DBConnection, grade: str, student_id: int, course_id: int):
        pass

    @abstractmethod
    def get_courses(self, db: DBConnection):
        pass

    @abstractmethod
    def get_students(self, db: DBConnection, course_id: int):
        pass

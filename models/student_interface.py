from abc import ABC, abstractmethod
from utilities.database_connection import DBConnection


class StudentInterface(ABC):

    @abstractmethod
    def view_grades_and_status(self, db: DBConnection):
        pass
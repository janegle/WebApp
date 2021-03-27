from utilities.database_connection import DBConnection
from models.student import Student
from models.faculty import Faculty
from faker import Faker
import random
from utilities.query_object_attributes import *
from fastapi import HTTPException


class Login:
    def __init__(self, db: DBConnection):
        """
        Purpose: Initialize login.
        Inputs:
            db (class): a class responsible for connecting with the database
        Outputs: None
        """
        self.db = db

    def is_authenticated_user(self, user_name: str, password: str):
        query = "SELECT password FROM credential "
        main_query = "WHERE username = '{}';"
        query += main_query.format(user_name)
        result = self.db.execute_query(query)
        if not result:
            print("username does not exist")
            return False
        else:
            if password == result[0][0]:
                print("Correct password")
                return True
            else:
                print("Wrong password")
                return False

    def get_user(self, user_name: str, password: str):
        if self.is_authenticated_user(user_name, password):
            query = "SELECT ID, role FROM credential "
            main_query = "WHERE username = '{}' AND password = '{}';"
            query += main_query.format(user_name, password)
            result = self.db.execute_query(query)
            id = result[0][0]
            role = result[0][1]

            user = self.get_user_helper(role, id)
            return user

    def get_role(self, id: int):
        query = "SELECT role FROM credential "
        main_query = "WHERE ID = {};"
        query += main_query.format(id)
        result = self.db.execute_query(query)
        role = result[0][0]
        return role

    def get_token(self, id: int):
        token = self.generate_token()
        self.add_token_to_db(id, token)
        return token

    def generate_token(self):
        fake = Faker()
        random_seed = random.randrange(1, 50)
        Faker.seed(random_seed)
        token = fake.password(length=20, special_chars=False)
        return token

    def add_token_to_db(self, id: int, token: str):
        query = "UPDATE credential "
        main_query = "SET token = '{}' WHERE ID = {};"
        query += main_query.format(token, id)
        self.db.execute_query(query)

    def log_out(self, id: int):
        query = "UPDATE credential "
        main_query = "SET token = NULL WHERE ID = {};"
        query += main_query.format(id)
        self.db.execute_query(query)

    def check_token(self, user_token: str):
        if not user_token:
            raise HTTPException(status_code=400, detail="Unauthorized user")
        user_name = user_token.split(".")[0]
        token = user_token.split(".")[1]
        query = "SELECT ID, role FROM credential "
        main_query = "WHERE username = '{}' AND token = '{}';"
        query += main_query.format(user_name, token)
        result = self.db.execute_query(query)

        if result and len(result) > 0:
            id = result[0][0]
            role = result[0][1]
            user = self.get_user_helper(role, id)
            return user

        return None

    def get_user_helper(self, role: str, id: int):
        if role == "student":
            name = query_name(role, id, self.db)
            restriction = query_restriction(id, self.db)
            student = Student(id, name, restriction)
            return student

        elif role == "faculty":
            name = query_name(role, id, self.db)
            faculty = Faculty(id, name)
            return faculty

        else:
            return None

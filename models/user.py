from utilities.database_connection import DBConnection


class User:
    def __init__(self, id: int, name: str):
        self.__name = name
        self.__id = id

    def get_name(self):
        return self.__name

    def get_id(self):
        return self.__id

    def update_password(self, new_password: str, id: int, db: DBConnection):
        query = "UPDATE credential "
        main_query = "SET password = '{}' WHERE ID = {};"
        query += main_query.format(new_password, id)
        db.execute_query(query)
        print("Password successfully updated")

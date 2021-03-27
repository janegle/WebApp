import pymysql
import pymysql.cursors
from utilities import auth


class DBConnection:

    def __init__(self):
        """
        Purpose: Initialize the Database login client.
        Inputs: None
        Outputs: None
        """

        self.auth = {
            "host": auth.host,
            "user": auth.user,
            "password": auth.password,
            "db": auth.db,
            "autocommit": True,
            "connect_timeout": 10000,
            "local_infile": True
        }
        self.con = None
        self.retry_cnt = 1

    def open_connection(self):
        """
        Purpose: Using the provided authentication information, open the
                 connection to the database
        Inputs: None
        Outputs: Return True if successful.
        """

        self.con = pymysql.connect(**self.auth)
        return True

    def close_connection(self):
        """
        Purpose: Using the provided authentication information, close the
                 connection to the database
        Inputs: None
        Outputs: Return True if successful.
        """

        self.con.close()
        return True

    def execute_query(self, query: str):
        cur = self.con.cursor()
        print("Going to execute the query: ", query)
        cur.execute(query)
        results = cur.fetchall()
        print("Finished executing query")
        cur.close()
        return results

from utilities.database_connection import DBConnection
from utilities.current_quarter import *


class SearchEngine:
    def __init__(self, db: DBConnection):
        """
        Purpose: Initialize the search engine.
        Inputs:
            db (class): a class responsible for connecting with the database
        Outputs: None
        """
        self.db = db

    def search(self, search_criteria: str, user_input: str):
        """
        Purpose: Create the database query based on the provided keywords.
                 Execute the query and return the results.
        Inputs:
            search_criteria (string): prefix, course number, instructor
            user_input: value of quarter, prefix or instructor (string) or value of course number (int)
        Outputs:
            results (list): results from the query
        """

        if search_criteria == 'prefix':
            query = self.query_by_prefix(user_input)
        elif search_criteria == 'course_number':
            query = self.query_by_course_number(int(user_input))
        elif search_criteria == 'faculty_name':
            query = self.query_by_instructor(user_input)

        results = self.db.execute_query(query)

        return results

    def query_by_prefix(self, user_input: str):
        query = "SELECT * FROM course "
        main_query = "WHERE prefix = '{}' AND quarter = '{}' AND year_offered = {} ORDER BY course_num ASC;"
        query += main_query.format(user_input, QUARTER, YEAR_OFFERED)
        return query

    def query_by_course_number(self, user_input: int):
        query = "SELECT * FROM course "
        main_query = "WHERE course_num = {} AND quarter = '{}' AND year_offered = {} ORDER BY course_num ASC;"
        query += main_query.format(user_input, QUARTER, YEAR_OFFERED)
        return query

    def query_by_instructor(self, user_input: str):
        # wild card search
        query = (r'''SELECT course.course_id, course.prefix, course.course_num, course.course_name,
        course.quarter, course.year_offered,
        course.day_offered, course.time_start, course.time_end,
        course.section_offered, course.max_enrollment
        FROM faculty_course
        INNER JOIN faculty
        ON faculty_course.faculty_id = faculty.faculty_id
        INNER JOIN course
        ON course.course_id = faculty_course.course_id ''')
        main_query = "WHERE faculty.name LIKE '{}' AND quarter = '{}' AND year_offered = {} ORDER BY course_num ASC;"
        wildcard_user_input = "%" + user_input + "%"
        query += main_query.format(wildcard_user_input, QUARTER, YEAR_OFFERED)
        return query


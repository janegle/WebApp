class Course:
    def __init__(self, prefix: str, course_code: int, course_id: int):
        self.__prefix = prefix
        self.__course_code = course_code
        self.__course_id = course_id

    def get_prefix(self):
        return self.__prefix

    def get_course_code(self):
        return self.__course_code

    def get_course_id(self):
        return self.__course_id

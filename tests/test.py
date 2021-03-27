import unittest
from controllers.search import SearchEngine
from utilities.database_connection import DBConnection
from controllers.add_course import AddCourseController
from controllers.drop_course import DropCourseController
from controllers.login import Login

db = DBConnection()
db.open_connection()


class MyTestCase(unittest.TestCase):
    def test_log_in(self):
        auth = Login(db)
        fail_login = auth.is_authenticated_user("giangle", "banana")
        self.assertEqual(fail_login, False)
        success_login = auth.is_authenticated_user("TroyBell", "9SR30UAy")
        self.assertEqual(success_login, True)

    # test whether a search for courses in spring 2020 containing "CAPP" prefix would produce 9 results as expected
    def test_search_by_prefix(self):
        search_engine = SearchEngine(db)
        prefix_search = search_engine.search("prefix", "CAPP")
        self.assertEqual(len(prefix_search), 9)

    def test_has_restriction(self):
        auth = Login(db)
        student = auth.get_user("TroyBell", "9SR30UAy")
        add_course_controller = AddCourseController(db, student)
        has_restriction = add_course_controller.has_restriction()
        self.assertEqual(has_restriction, True)

    def test_current_quarter(self):
        auth = Login(db)
        student = auth.get_user("KevinHowe", "Dv97BZ2j")
        add_course_controller = AddCourseController(db, student)
        course_in_current_quarter = add_course_controller.check_current_quarter(5)
        self.assertEqual(course_in_current_quarter, False)

    # test whether after the add course operation for a specific course_id and UCID, a query for that course_ID and
    # UCID would produce 1 result as expected.
    def test_add_course(self):
        auth = Login(db)
        student = auth.get_user("KevinHowe", "Dv97BZ2j")
        add_course_controller = AddCourseController(db, student)
        add_course_controller.add_course(7)
        query = "SELECT * FROM student_course "
        main_query = "WHERE course_id = {} AND UCID = {}"
        query += main_query.format(7, student.get_id())
        result = db.execute_query(query)
        self.assertEqual(len(result), 1)

    def test_course_already_added(self):
        auth = Login(db)
        student = auth.get_user("KevinHowe", "Dv97BZ2j")
        add_course_controller = AddCourseController(db, student)
        course_already_added = add_course_controller.course_already_added(7)
        self.assertEqual(course_already_added, True)

    # test whether after the drop course operation for a specific course_id and UCID, a query for that course_ID and
    # UCID would produce 0 result as expected.
    def test_drop_course(self):
        auth = Login(db)
        student = auth.get_user("KevinHowe", "Dv97BZ2j")
        drop_course_controller = DropCourseController(db, student)
        drop_course_controller.drop_course(7)
        query = "SELECT * FROM student_course "
        main_query = "WHERE course_id = {} AND UCID = {}"
        query += main_query.format(7, student.get_id())
        result = db.execute_query(query)
        self.assertEqual(len(result), 0)

    def test_max_enrollment_reached(self):
        auth = Login(db)
        student = auth.get_user("KevinHowe", "Dv97BZ2j")
        add_course_controller = AddCourseController(db, student)
        add_course_controller.add_course(16)
        less_than_max_enrollment = add_course_controller.less_than_enrollment_limit(16)
        self.assertEqual(less_than_max_enrollment, False)
        drop_course_controller = DropCourseController(db, student)
        drop_course_controller.drop_course(16)

    def test_time_conflict(self):
        auth = Login(db)
        student = auth.get_user("KevinHowe", "Dv97BZ2j")
        add_course_controller = AddCourseController(db, student)
        time_conflict1 = add_course_controller.time_conflict(30)
        self.assertEqual(time_conflict1, True)
        time_conflict2 = add_course_controller.time_conflict(19)
        self.assertEqual(time_conflict2, True)

    def test_update_password(self):
        auth = Login(db)
        username = "JimmyDelacruz"
        password = "e8Ay8Qw7"
        student = auth.get_user(username, password)
        token = auth.get_token(student.get_id())
        student.update_password("f8Ay8Qw7", student.get_id(), db)
        query = "SELECT password FROM credential "
        main_query = "WHERE username = '{}' AND token = '{}';"
        query += main_query.format(username, token)
        result = db.execute_query(query)
        self.assertEqual(result[0][0], "f8Ay8Qw7")

    def test_view_grades(self):
        auth = Login(db)
        student = auth.get_user("KevinHowe", "Dv97BZ2j")
        output = student.view_grades_and_status(db)
        print(output)

    def test_overload(self):
        auth = Login(db)
        student1 = auth.get_user("CalvinAndrews", "4l3PwMes")
        add_course_controller = AddCourseController(db, student1)
        overload = add_course_controller.overload_courses()
        self.assertEqual(overload, True)
        student2 = auth.get_user("JimmyDelacruz", "e8Ay8Qw7")
        add_course_controller = AddCourseController(db, student2)
        overload = add_course_controller.overload_courses()
        self.assertEqual(overload, False)


if __name__ == '__main__':
    unittest.main()

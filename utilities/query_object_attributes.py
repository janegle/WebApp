from utilities.database_connection import DBConnection


def query_name(role: str, id_value: int, db: DBConnection):
    query = "SELECT name "
    main_query = "FROM {} WHERE {} = {};"
    if role == "student":
        id = "UCID"
    if role == "faculty":
        id = "faculty_id"
    query += main_query.format(role, id, id_value)
    result = db.execute_query(query)
    name = result[0][0]
    return name


def query_restriction(id_value: int, db: DBConnection):
    query = "SELECT restriction FROM student "
    main_query = "WHERE UCID = {};"
    query += main_query.format(id_value)
    result = db.execute_query(query)
    restriction = result[0][0]
    if restriction == "":
        return "No restriction"
    else:
        return restriction


def query_course_info(course_id: int, db: DBConnection):
    query = "SELECT * FROM course "
    main_query = "WHERE course_id = {};"
    query += main_query.format(course_id)
    result = db.execute_query(query)
    output = convert_course_object(result)
    return output


def convert_course_object(db_course_result):
    output = [{
        'course_id': x[0],
        'prefix': x[1],
        'course_num': x[2],
        'course_name': x[3],
        'quarter': x[4],
        'year_offered': x[5],
        'day_offered': x[6],
        'time_start': x[7],
        'time_end': x[8],
        'section_offered': x[9],
        'max_enrollment': x[10]
    } for x in db_course_result]
    return output


def convert_student_object(db_student_result):
    output = [{
        'UCID': x[0],
        'student_name': x[1],
        'student_grade': x[2],
    } for x in db_student_result]
    return output


def query_course_description(criteria, course_id, db):
    results = db.find({criteria: course_id})
    return results


def get_course_description(course_info, input, output, db):
    for x in course_info:
        x[output] = [x.get(
            output) for x in query_course_description(input, x[input], db)]
    return course_info

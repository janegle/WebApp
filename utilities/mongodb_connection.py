from pymongo import MongoClient
from faker import Faker
from faker.providers import BaseProvider
import pprint

fake = Faker()


class Provider(BaseProvider):
    course_start_id = 0

    def course_id(self):
        self.course_start_id = self.course_start_id + 1
        return self.course_start_id

    def course_description(self):
        return fake.paragraph(nb_sentences=3, variable_nb_sentences=False)


fake.add_provider(Provider)


def create_fake_mongodb_data(columns, fake, no_of_rows):
    data = {column: [getattr(fake, column)() for _ in range(no_of_rows)] for column in columns}
    result = [{} for _ in range(no_of_rows)]

    for i in range(no_of_rows):
        for column in columns:
            result[i][column] = data[column][i]
    return result


if __name__ == '__main__':
    # create the data
    course_descriptions = create_fake_mongodb_data(['course_id', 'course_description'], fake, 100)
    # open the connection
    client = MongoClient()
    db = client.mgdb
    course_description = db.course_description
    # insert data
    course_description.insert_many(course_descriptions)
    # for doc in course_description.find({"course_id": 95}):
    #     pprint.pprint(doc)
    # close the connection
    client.close()





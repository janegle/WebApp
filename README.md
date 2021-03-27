**Description**

This project aims to create a web app for a course registration system.

The detailed requirements are as follows:

A student can do the following:

•	Log in to his/her account Read only
•	Modify password 
•	Upon logging in, the student would see a screen with the following information: course(s) registered for the current quarter (and the ability to switch to a different quarter), restriction (if any), and link to course registration page (where he/she can add/drop/search courses)
•	Register for up to 3 courses per quarter 
•	In the case of students overloading courses (registering for the 4th course), an automatic email will be generated for the relevant personnel for approval
•	View courses registered for and previous courses Read only 
•	Search for course(s) by different criteria
•	Add course(s)
•	Drop course(s)
•	View restrictions and being alerted when attempting to register for courses
•	View timesheet of course(s) in tabular form – Course Class
•	View grades received

A faculty can do the following:

•	Log in to his/her account
•	Modify password
•	Upon logging in, faculty would see a page where they can enter grades for students in his/her course

**Folders and files structure**:

1. models: containing classes Course, User, Student, StudentInterface, Faculty, FacultyInterface

2. controllers: containing class AddCourseController, DropCourseController,
SearchEngine, Login, and the overload.py file containing the process for emailing students who overload courses

3. utilities: containing class DBConnection, file auth.py with the credentials to log in to the local MySQL database, file mongodb_connection.py
to create and populate a collection in MongoDB, and other files with helper functions

4. tests: file test.py containing 12 unit tests

5. data: contains the file Dump20210317.sql needed to recreate MySQL database. I also included
several csv files that I used to populate the database 

6. api_server: I use FastAPI to create end points for my webapp in the file api_server.py

7. web: build folder for frontend of this project from React

**Instruction to create MySQL database named "registration":**

1. Import Dump20210317.sql file
2. Fill in user and password in the auth.py file under utilities folder according to your credentials

**Instruction to create MongoDB database**

Install MongoDB and the following libraries: pymongo, faker
Run mongodb_connection.py (from folder utilities) once to create a collection and populate the collection

**Installation**

You must install the databases before continuing with these steps.

Install FastAPI:

Using pip: pip install fastapi uvicorn

Using conda: conda install fastapi uvicorn -c conda-forge

Install aiofiles with either pip (pip install aiofiles) or conda (conda install -c anaconda aiofiles) for static files. You can read more here:
https://fastapi.tiangolo.com/tutorial/static-files/

Other packages that potentially need installation: pymysql, smtplib (with either pip or conda)

**Instruction to run program**

If you use Pycharm: open folder final_project, open api_server.py and hit the green Run button in the second last line of the file.

If you use the command prompt, run "python3 api_server.py"

Go to localhost:8000/web to access the web app
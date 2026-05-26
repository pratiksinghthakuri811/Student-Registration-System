# Student-Registration-System
Student Registration System
Overview
The Student Registration System is a database-driven application built using MySQL Stored Procedures. It allows users to add, retrieve, update, and delete student records efficiently using a structured and clean database approach.

Database

Database Name: school_db
Table Name: student


Table Structure
ColumnTypeDescriptionstudent_idINT (AUTO_INCREMENT)Unique ID for each studentnameVARCHAR(40)Full name of the studentclassVARCHAR(40)Class of the studentphoneCHAR(10)Phone number of the studentaddressVARCHAR(30)Address of the student

Stored Procedures
1. add_student
Inserts a new student record into the database.
Parameters:
ParameterTypeDescriptionp_nameVARCHAR(40)Student namep_classVARCHAR(40)Student classp_phoneCHAR(10)Student phonep_addressVARCHAR(40)Student address
sqlcall add_student('Pratik', 'Ten', '9868205197', 'Kathmandu');

2. get_student
Retrieves all details of a student by their ID.
Parameters:
ParameterTypeDescriptionp_student_idINTID of the student to fetch
sqlcall get_student(1);

3. update_student
Updates the phone number and address of an existing student. Displays an appropriate message if the student is not found.
Parameters:
ParameterTypeDescriptionp_student_idINTID of the student to updatep_phoneCHAR(10)New phone numberp_addressVARCHAR(30)New address
sqlcall update_student('9800000099', 1, 'Pokhara');

4. delete_student
Permanently removes a student record. Displays a message if the student does not exist.
Parameters:
ParameterTypeDescriptionp_student_idINTID of the student to delete
sqlcall delete_student(2);

Error Handling
The update_student and delete_student procedures use COUNT(*) to check whether a student exists before performing any operation. An appropriate message is displayed in both success and failure cases.

How to Run

Open MySQL Workbench or any MySQL client
Create the database and table by running the SQL script
Create all stored procedures
Use the call statements to test each procedure


Technologies Used
TechnologyPurposeMySQLDatabase managementStored ProceduresBackend business logicMySQL WorkbenchDatabase client

Author
Pratik Jung Singh Thakuri

License
This project was developed as part of an academic assignment.

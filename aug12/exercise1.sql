create database bts_internship;
show databases;
use bts_internship;
CREATE TABLE students (first_name VARCHAR(50), last_name VARCHAR(50), grade_1 TINYINT(2) unsigned, grade_2 TINYINT(2) unsigned, grade_3 TINYINT(2) unsigned, average DECIMAL(5,3) unsigned);
show tables;
describe students;
INSERT INTO students VALUES('Juan', 'Perez', 8, 8, 9, 0);
INSERT INTO students VALUES('Apu', 'Nahasapimapeti', 7, 8 , 9, 0);
INSERT INTO students VALUES('Emmanuel', 'Villalobos Arronte', 7, 7, 7, 0);
INSERT INTO students VALUES('pepe', '', 8, 5, 6, 0);
INSERT INTO students VALUES('Juan', 'Perez', 6, 4, 5, 0);
SELECT * FROM students;
SELECT * FROM students WHERE first_name = 'Juan';
SELECT * FROM students WHERE first_name = 'juan';
SELECT UCASE(first_name) FROM students;
SELECT (grade_1+grade_2+grade_3)/3 FROM students;
SELECT *, ((grade_1+grade_2+grade_3)/3) FROM students;
SELECT *, ((grade_1+grade_2+grade_3)/3) AS bonito FROM students;
ALTER TABLE students DROP COLUMN average;
SELECT *, ((grade_1+grade_2+grade_3)/3) AS bonito FROM students;
SELECT AVG(grade_1) FROM students;
SELECT COUNT(*) FROM students;
SELECT *, ((grade_1+grade_2+grade_3)/3) AS average FROM students HAVING average > 5.9999;
ALTER TABLE students ADD COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL FIRST;
TRUNCATE students;
quit;

mysql -u root -p bts_internship < C:\Users\estef\OneDrive\Escritorio\cmder\intership_db\studentsTable.sql
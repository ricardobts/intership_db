mysql -p -u root
CREATE DATABASE bts_internship;
SHOW DATABASES;
USE bts_internship;
CREATE TABLE students (first_name VARCHAR(30), last_name VARCHAR(30), grade_1 TINYINT(2) UNSIGNED, grade_2 TINYINT(2) UNSIGNED, grade_3 TINYINT(2) UNSIGNED, average DECIMAL(5,2));
SHOW TABLES;
DESCRIBE students;
INSERT INTO students VALUES ('Juan', 'Perez', 8, 8, 9, 0);
INSERT INTO students VALUES ('Apu', 'Nahasapeemapetilon', 7, 8, 9, 0);
INSERT INTO students VALUES ('Emmanuel', 'Villalobos Arronte', 7, 7, 7, 0);
INSERT INTO students VALUES ('pepe', '', 8, 5, 6, 0);
INSERT INTO students VALUES ('Juan', 'Perez', 6, 4, 5, 0);
SELECT * FROM students;
SELECT * FROM students WHERE first_name = 'Juan';
SELECT * FROM students WHERE first_name = 'juan';
SELECT * FROM students WHERE UCASE(first_name) = UCASE('juan');
SELECT average FROM students;
SELECT UCASE(first_name) FROM students;
SELECT (grade_1 + grade_2 + grade_3)/3 FROM students;
SELECT *, (grade_1 + grade_2 + grade_3)/3 AS average FROM students;
ALTER TABLE students DROP average;
SELECT AVG(grade_1) FROM students;
SELECT COUNT(*) FROM students;
SELECT *, (grade_1 + grade_2 + grade_3)/3 AS average FROM students HAVING average > 5.99;
TRUNCATE students;
ALTER TABLE students ADD COLUMN ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL FIRST;

-- mysql -u root -p bts_internship < C:\Users\silva\Desktop\cmder\intership_db\studentsTable.sql

-- INSERT INTO students (`first_name`,`last_name`,`grade_1`,`grade_2`,`grade_3`) VALUES ('Juan','Perez',8,8,9);
-- INSERT INTO students (`first_name`,`last_name`,`grade_1`,`grade_2`,`grade_3`) VALUES ('Apu','Nahasapeemapetilon',7,8,9);
-- INSERT INTO students (`first_name`,`last_name`,`grade_1`,`grade_2`,`grade_3`) VALUES ('Emmanuel','Villalobos Arronte',7,7,7);
-- INSERT INTO students (`first_name`,`last_name`,`grade_1`,`grade_2`,`grade_3`) VALUES ('pepe','',8,5,6);
-- INSERT INTO students (`first_name`,`last_name`,`grade_1`,`grade_2`,`grade_3`) VALUES ('Juan','Perez',6,4,5);
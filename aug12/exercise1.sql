mysql -uroot;
CREATE DATABASE bts_internship;
USE bts_intership;
CREATE TABLE students ( first_name VARCHAR(120), last_name VARCHAR(120), grade_1 TINYINT(2), grade_2 TINYINT(2), grade_3 TINYINT(2), average DECIMAL(2,2));
describe students;
INSERT INTO students VALUES ("Juan", "Perez", 8, 8, 9, 0),("Apu", "Nahasapimapeti", 7, 8 ,9, 0), ("Emmanuel", "Villalobos Arronte", 7, 7, 7, 0), ("Pepe", NULL, 8, 5, 6, 0), ("Juan", "Perez", 6, 4, 5, 0);
CREATE DATABASE test;

USE test;

CREATE TABLE etudiant(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
firstName VARCHAR(50),
lastName VARCHAR(50),
class_number INT NOT NULL,
diplome_date DATE
);

DROP TABLE etudiant;

SELECT * FROM etudiant;
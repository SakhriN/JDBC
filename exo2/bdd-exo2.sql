CREATE DATABASE bddexo2;

USE bddexo2;


CREATE TABLE client (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    identifiant VARCHAR(50),
    numeroTelephone VARCHAR(15)
);

CREATE TABLE compte_bancaire (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    solde DECIMAL(10, 2),
    client_id INT,
    CONSTRAINT fk_client_id FOREIGN KEY (client_id) REFERENCES client(id)
);


CREATE TABLE operation (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    montant DECIMAL(10, 2),
    type VARCHAR(10),
    compte_id INT,
    CONSTRAINT fk_compte_id FOREIGN KEY (compte_id) REFERENCES compte_bancaire(id)
);


DROP TABLE operation;
DROP TABLE compte_bancaire;
DROP TABLE client;
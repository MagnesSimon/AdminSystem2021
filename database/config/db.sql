CREATE DATABASE dbwoody;

CREATE USER admin IDENTIFIED WITH mysql_native_password BY 'Passw0rd!';

GRANT ALL PRIVILEGES ON dbwoody.* TO 'admin';

CREATE TABLE objet (id INTEGER NOT NULL AUTO-INCREMENT, nom varchar(255) NOT NULL, prix INTEGER NOT NULL, CONSTRAINT pk_objet PRIMARY KEY(id));

INSERT INTO objet (nom, prix)
VALUE ('toupie, 5), (lego, 15),(manette, 60);

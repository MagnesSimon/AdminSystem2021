CREATE USER 'adminS'@'172.17.0.4' IDENTIFIED BY 'admin';
CREATE USER 'adminT'@'172.17.0.1' IDENTIFIED BY 'admin';
CREATE USER 'adminF'@'51.210.44.117' IDENTIFIED BY 'admin';

CREATE DATABASE database_grp_5;

GRANT ALL PRIVILEGES ON database_grp_5.* TO 'adminS'@'localhost';
GRANT ALL PRIVILEGES ON database_grp_5.* TO 'adminT'@'172.17.0.1';
GRANT ALL PRIVILEGES ON database_grp_5.* TO 'adminF'@'51.210.44.117';

USE database_grp_5;

CREATE TABLE objet(
	id INTEGER NOT NULL AUTO_INCREMENT,
	libelle CHAR(50) NOT NULL,
	prix DECIMAL(8,2) NOT NULL,
	CONSTRAINT pk_objet PRIMARY KEY(id)
);

INSERT INTO objet (libelle,prix)
VALUES  ('cheval en bois',4.99),
('peluche',15.50);

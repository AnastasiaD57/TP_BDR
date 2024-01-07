CREATE TABLE Medecin (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom_Medecin VARCHAR(200) NOT NULL
);

CREATE TABLE Malade (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom_Malade VARCHAR(200) NOT NULL
);

INSERT INTO Medecin (nom_Medecin)
VALUES
("Dupont"), ("Zorlu"), ("Mantel");

INSERT INTO Malade (nom_Malade)
VALUES
("Ana"), ("Cyrille"), ("Nathalie");



CREATE TABLE Consultation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Date DATE,
    Prix DECIMAL,
    id_Medecin INTEGER,
    id_Malade INTEGER,
    FOREIGN KEY (id_Medecin) REFERENCES Medecin(id),
    FOREIGN KEY (id_Malade) REFERENCES Malade(id)
);

PRAGMA foreign_key = ON;

INSERT INTO Consultation
(Date, Prix, id_Medecin, id_Malade)
VALUES
("2024-01-03", 25, 3, 1),
("2023-12-12", 20, 1, 1),
("2024-01-06", 30, 2, 3);

DROP TABLE Detecter;




CREATE TABLE Symptome (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom_Symptome VARCHAR(200) NOT NULL
);

INSERT INTO Symptome
(nom_Symptome)
VALUES
("Toux"), ("Fièvre"), ("Courbatures");


CREATE TABLE Detecter (
    id_Consultation INTEGER,
    id_Symptome INTEGER,
    FOREIGN KEY (id_Consultation) REFERENCES Consultation(id),
    FOREIGN KEY (id_Symptome) REFERENCES Symptome(id)
);

PRAGMA foreign_key = ON;

INSERT INTO Detecter
(id_Consultation, id_Symptome)
VALUES
(1, 3), (2, 2), (3, 3);




CREATE TABLE Maladie (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom_Maladie VARCHAR(200) NOT NULL
);

INSERT INTO Maladie
(nom_Maladie)
VALUES
("Gastro"), ("Grippe"), ("Angine");

CREATE TABLE Diagnostiquer (
    id_Consultation INTEGER,
    id_Maladie INTEGER,
    FOREIGN KEY (id_Consultation) REFERENCES Consultation(id),
    FOREIGN KEY (id_Maladie) REFERENCES Maladie(id)
);

PRAGMA foreign_key = ON;

INSERT INTO Diagnostiquer
(id_Consultation, id_Maladie)
VALUES
(1, 2), (2, 2), (3, 1);



CREATE TABLE Associer (
    id_Symptome INTEGER,
    id_Maladie INTEGER,
    FOREIGN KEY (id_Symptome) REFERENCES Symptome(id),
    FOREIGN KEY (id_Maladie) REFERENCES Maladie(id)
);

PRAGMA foreign_key = ON;

INSERT INTO Associer
(id_Symptome, id_Maladie)
VALUES
(1, 3), (2, 3), (3, 1);
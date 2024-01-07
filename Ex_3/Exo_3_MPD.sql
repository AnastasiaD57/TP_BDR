CREATE TABLE Proprietaire (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nom_proprietaire VARCHAR(50) NOT NULL,
    Prenom_proprietaire VARCHAR(50) NOT NULL,
    Adresse_proprietaire VARCHAR(200) NOT NULL,
    Tel_proprietaire VARCHAR(10) NOT NULL
)

CREATE TABLE Bien (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Taille_bien VARCHAR(4) NOT NULL,
    Adresse_bien VARCHAR(200) NOT NULL,
    Prix_location_bien DECIMAL NOT NULL,
    Duree_contrat TINYINT NOT NULL,
    Pourcentage_contrat TINYINT NOT NULL,
    Duree_bail TINYINT NOT NULL,
    id_proprietaire INTEGER,
    FOREIGN KEY (id_proprietaire) REFERENCES Proprietaire(id)
)

CREATE TABLE Locataire (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nom_locataire VARCHAR(50) NOT NULL,
    Prenom_locataire VARCHAR(50) NOT NULL,
    Adresse_locataire VARCHAR(200) NOT NULL,
    Tel_locataire VARCHAR(10) NOT NULL,
    id_bien INTEGER,
    FOREIGN KEY (id_bien) REFERENCES Bien(id)
)
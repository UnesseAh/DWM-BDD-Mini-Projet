CREATE TABLE CLIENT (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    raison_sociale VARCHAR(100),
    adresse TEXT,
    email VARCHAR(100) UNIQUE,
    tel VARCHAR(20)
);

CREATE TABLE PRODUIT (
    produit_id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prix DECIMAL(10,2),
    quantite_disponible INT,
    description TEXT,
    image_url VARCHAR(255),
    details_techniques TEXT,
    date_ajout DATE,
    actif BOOLEAN DEFAULT TRUE
);

CREATE TABLE PANIER (
    panier_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    date_creation DATETIME DEFAULT CURRENT_TIMESTAMP,
    statut ENUM('OUVERT', 'VALIDE', 'PAYE') DEFAULT 'OUVERT',
    date_validation DATETIME,
    FOREIGN KEY (client_id) REFERENCES CLIENT(client_id)
);

CREATE TABLE LIGNE_PANIER (
    panier_id INT,
    produit_id INT,
    quantite INT DEFAULT 1,
    prix_unitaire_au_moment DECIMAL(10,2),
    PRIMARY KEY (panier_id, produit_id),
    FOREIGN KEY (panier_id) REFERENCES PANIER(panier_id),
    FOREIGN KEY (produit_id) REFERENCES PRODUIT(produit_id)
);

CREATE TABLE PAIEMENT (
    paiement_id INT PRIMARY KEY AUTO_INCREMENT,
    panier_id INT UNIQUE,
    mode_paiement VARCHAR(50),
    date_paiement DATETIME DEFAULT CURRENT_TIMESTAMP,
    montant DECIMAL(10,2),
    statut_paiement ENUM('EN_ATTENTE', 'ACCEPTE', 'REFUSE'),
    FOREIGN KEY (panier_id) REFERENCES PANIER(panier_id)
);

CREATE TABLE LIVRAISON (
    livraison_id INT PRIMARY KEY AUTO_INCREMENT,
    panier_id INT UNIQUE,
    date_livraison_prevue DATE,
    adresse_livraison TEXT,
    statut_livraison ENUM('A_PREPARER', 'EXPEDIEE', 'LIVREE'),
    FOREIGN KEY (panier_id) REFERENCES PANIER(panier_id)
);
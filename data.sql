INSERT INTO CLIENT (nom, prenom, email, adresse) VALUES 
('AHASLA', 'Youness', 'youness@gmail.com', 'Casablanca'),
('Idrissi', 'Layla', 'layla@yahoo.fr', 'Rabat'),
('TechSolutions', 'Admin', 'contact@techsol.ma', 'Technopark');

INSERT INTO PRODUIT (nom, prix, quantite_disponible, date_ajout, description) VALUES 
('PC Portable', 12000.00, 10, '2025-01-01', 'High performance'), 
('Souris', 150.00, 50, '2025-06-15', 'Good mouse'),
('Ecran', 3500.00, 5, CURDATE(), 'New'),
('Clavier', 800.00, 20, CURDATE(), 'RGB light');

INSERT INTO PANIER (client_id, statut, date_validation) VALUES 
(1, 'PAYE', NOW()),
(2, 'OUVERT', NULL);

INSERT INTO LIGNE_PANIER (panier_id, produit_id, quantite, prix_unitaire_au_moment) VALUES 
(1, 2, 3, 150.00),
(1, 1, 1, 12000.00);
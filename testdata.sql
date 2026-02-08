-- Adding Clients
INSERT INTO CLIENT (nom, prenom, email, adresse) VALUES 
('Benani', 'Karim', 'karim@gmail.com', '12 Av Hassan II, Casa'),
('Idrissi', 'Layla', 'layla@yahoo.fr', '45 Rue de Fes, Rabat'),
('TechSolutions', 'Admin', 'contact@techsol.ma', 'Immeuble 4, Technopark');

INSERT INTO PRODUIT (nom, prix, quantite_disponible, date_ajout, description) VALUES 
('PC Portable Gamer', 12000.00, 10, '2025-01-01', 'High performance'), 
('Souris Sans Fil', 150.00, 50, '2025-06-15', 'Ergonomic mouse'),
('Ecran 4K Ultra', 3500.00, 5, CURDATE(), 'Nouvel Arrivage!'),
('Clavier Mécanique', 800.00, 20, CURDATE(), 'RGB Backlit');

INSERT INTO PANIER (client_id, statut, date_validation) VALUES 
(1, 'PAYE', NOW()),
(2, 'OUVERT', NULL);

INSERT INTO LIGNE_PANIER (panier_id, produit_id, quantite, prix_unitaire_au_moment) VALUES 
(1, 2, 3, 150.00),
(1, 1, 1, 12000.00);
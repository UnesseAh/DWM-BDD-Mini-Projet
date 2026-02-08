SELECT nom, prix, date_ajout 
FROM PRODUIT 
WHERE date_ajout >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);
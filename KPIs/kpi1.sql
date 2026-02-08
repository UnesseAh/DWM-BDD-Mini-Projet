SELECT 
    P.nom AS Produit, 
    SUM(LP.quantite) AS Total_Vendu
FROM LIGNE_PANIER LP
JOIN PRODUIT P ON LP.produit_id = P.produit_id
GROUP BY P.produit_id
ORDER BY Total_Vendu DESC;
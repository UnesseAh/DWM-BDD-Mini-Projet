SELECT 
    SUM(LP.quantite * LP.prix_unitaire_au_moment) AS Chiffre_Affaires_Total
FROM LIGNE_PANIER LP
JOIN PANIER P ON LP.panier_id = P.panier_id
WHERE P.statut = 'PAYE';
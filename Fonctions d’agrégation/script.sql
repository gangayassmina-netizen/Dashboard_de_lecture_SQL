USE Dashboard;

SELECT COUNT(*) AS total_Articles FROM Article;
SELECT MAX(date_pub) AS derniere_publication FROM Article;


SELECT users_id, COUNT(*) AS nb_articles
FROM Article
GROUP BY users_id
HAVING COUNT(*) >= 3;
SELECT users_id, COUNT(*) AS nb_articles
FROM Article
GROUP BY users_id;

SELECT AVG(nb_vues) AS moyenne_vues FROM Article;





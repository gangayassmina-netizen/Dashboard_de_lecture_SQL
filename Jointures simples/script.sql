SHOW TABLES;
SELECT a.titre, a.date_pub, u.nom
FROM Article a
INNER JOIN users u ON a.users_id = u.id;

SELECT a.titre, a.date_pub, u.nom
FROM Article a
INNER JOIN users u ON a.users_id = u.id;

SELECT a.titre, u.nom
FROM Article a
INNER JOIN users u ON a.users_id = u.id
WHERE u.nom = 'Ahmed Alami';

SELECT a.titre, u.nom
FROM Article a
LEFT JOIN users u ON a.users_id = u.id;

SELECT a.titre, u.nom, c.contenu
FROM Article a
INNER JOIN users u ON a.users_id = u.id
INNER JOIN Commentaire c ON a.id = c.Article_id;






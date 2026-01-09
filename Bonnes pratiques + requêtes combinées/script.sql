-- Script pour gérer les données du blog
START TRANSACTION;

INSERT INTO Article (titre, contenu, date_pub, users_id, statut, Categorie_idCategorie)
VALUES ('Nouveau post Dashboard', 'Texte exemple pour Dashboard', '2025-07-18', 1, 'publié', 1);

UPDATE users
SET email = 'alice.update@test.com'
WHERE id = 1;

DELETE FROM Commentaire WHERE id = 3;

COMMIT; -- ou ROLLBACK en cas d’erreur
SELECT * FROM Article;
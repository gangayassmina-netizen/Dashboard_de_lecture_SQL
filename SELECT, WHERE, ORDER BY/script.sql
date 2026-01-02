DROP DATABASE IF EXISTS Dashboard;
CREATE DATABASE Dashboard;
USE Dashboard;

create table users (
id int auto_increment primary key,
nom varchar(45),

  email VARCHAR(45) UNIQUE,
  mot_de_passe VARCHAR(45) NOT NULL
);
 
  create table Categorie(

 id int auto_increment primary key,
 nom varchar(45)
  );
  
  create table Article(
id int auto_increment primary key,
titre varchar(45),
contenu varchar(45),
statut varchar(45),
users_id  int ,
date_pub varchar(45),
Categorie_idCategorie int
);

create table Commentaire(
id int auto_increment primary key,
 contenu varchar (45),
date_pub varchar (45),
 Article_id int
 );
 
INSERT INTO users (nom, email, mot_de_passe) VALUES
('Ahmed Alami', 'ahmed.alami@example.com', 'pass123'),
('Yassmine', 'yassmine@example.com', 'pass456'),
('Sara ELmani', 'sara.elmani@example.com', 'pass789'),
('El Mehdi', 'el.mehdi@example.com', 'pass321');

INSERT INTO Categorie (nom) VALUES
('SQL'), ('Python'), ('Web'), ('Marketing');

INSERT INTO Article (titre, contenu, statut, users_id, date_pub, Categorie_idCategorie) VALUES
('Introduction SQL', 'Contenu SQL de base', 'publié', 1, '2025-01-10', 1),
('Python pour débutants', 'Contenu Python facile', 'publié', 2, '2025-02-15', 2),
('HTML & CSS', 'Guide Web Design', 'archivé', 1, '2025-03-05', 3),
('Web Marketing', 'Marketing Digital', 'publié', 3, '2025-04-20', 4),
('JavaScript avancé', 'JS pour devs', 'publié', 1, '2025-05-12', 3),
('SQL Avancé', 'Requêtes complexes SQL', 'publié', 4, '2025-06-08', 1),
('Python Data Science', 'Analyse de données', 'publié', 2, '2025-07-22', 2),
('SEO et Référencement', 'Optimisation moteurs de recherche', 'archivé', 3, '2025-08-11', 4),
('Node.js backend', 'Création d\'API', 'publié', 1, '2025-09-18', 3),
('Cybersecurity Basics', 'Sécurité informatique', 'publié', 4, '2025-10-05', 1);

INSERT INTO Commentaire (contenu, date_pub, Article_id) VALUES
('Très bon article!', '2025-01-11', 1),
('Merci pour le tutoriel', '2025-02-16', 2),
('Je ne comprends pas le dernier exemple', '2025-03-06', 3),
('Excellent guide pour débutants', '2025-04-21', 4),
('Super explications sur JavaScript', '2025-05-13', 5),
('SQL Avancé très utile', '2025-06-09', 6),
('Analyse de données claire', '2025-07-23', 7),
('SEO expliqué simplement', '2025-08-12', 8),
('Node.js facile à suivre', '2025-09-19', 9),
('Sécurité informatique essentielle', '2025-10-06', 10);


SELECT * FROM Article;
SELECT titre, contenu FROM Article;


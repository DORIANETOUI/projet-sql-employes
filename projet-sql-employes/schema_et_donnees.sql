CREATE DATABASE IF NOT EXISTS debutantSQL;
USE debutantSQL;
-- creer la table Employes avec les colonnes spécifiées
CREATE TABLE Employes (
    ID INT PRIMARY KEY,
    Prenom VARCHAR(50),
    Nom VARCHAR(50),
    Email VARCHAR(100),
    Telephone VARCHAR(20),
    Poste VARCHAR(50),
    Departement VARCHAR(50),
    Salaire DECIMAL(10, 2),
    DateEmbauche DATE,
    EvaluationPerformance INT,
    Pays VARCHAR(50)
);

-- Insérer des données dans la table Employes
INSERT INTO Employes VALUES 
(1, 'Fabrice', 'Mutombo', 'fabrice.mutombo@gmail.com', '+243-811-123-456', 'Consultant', 'Finance', 118364.22, '2018-09-24', 2, 'RDC'),
(2, 'Fatou', 'Diop', 'fatou.diop@yahoo.com', '+221-78-456-7890', 'Développeur', 'Marketing', 31816.73, '2022-12-08', 3, 'Sénégal'),
(3, 'Aïssatou', 'Traoré', 'aissatou.traore@hotmail.com', '+225-07-456-1234', 'Consultante', 'Informatique', 105015.32, '2016-12-22', 4, 'Côte d’Ivoire'),
(4, 'Blaise', 'Ngoma', 'blaise.ngoma@exemple.com', '+243-812-789-456', 'Stagiaire', 'Informatique', 73687.95, '2020-07-26', 5, 'RDC'),
(5, 'Yassine', 'El Fassi', 'yassine.elfassi@gmail.com', '+212-06-123-7890', 'Designer', 'Opérations', 75700.8, '2018-01-11', 2, 'Maroc'),
(6, 'Mariam', 'Coulibaly', 'mariam.coulibaly@gmail.com', '+223-76-123-4567', 'Développeuse', 'Marketing', 115347.76, '2024-12-22', 4, 'Mali'),
(7, 'Dieudonné', 'Tshisekedi', 'dieudo.tshisekedi@exemple.com', '+243-813-456-789', 'Développeur', 'Informatique', 112556.95, '2016-10-15', 5, 'RDC'),
(8, 'Jacqueline', 'Abdoulaye', 'jacqueline.abdoulaye@exemple.com', '+228-90-123-4567', 'Développeuse', 'Informatique', 113483.58, '2018-10-07', 5, 'Togo'),
(9, 'Amadou', 'Cissé', 'amadou.cisse@yahoo.com', '+223-70-789-1234', 'Manager', 'Ressources Humaines', 75038.94, '2017-10-23', 5, 'Mali'),
(10, 'Chantal', 'Koffi', 'chantal.koffi@gmail.com', '+225-08-789-1234', 'Consultante', 'Ventes', 71006.17, '2018-01-08', 3, 'Côte d’Ivoire'),
(11, 'Adama', 'Sangaré', 'adama.sangare@exemple.com', '+223-65-456-1234', 'Consultant', 'Finance', 60185.82, '2020-07-28', 1, 'Mali'),
(12, 'Bintou', 'Diallo', 'bintou.diallo@hotmail.com', '+224-622-123-456', 'Stagiaire', 'Ventes', 77656.06, '2016-10-15', 2, 'Guinée'),
(13, 'Jean-Luc', 'Mokonzi', 'jeanluc.mokonzi@exemple.com', '+243-815-123-456', 'Consultant', 'Marketing', 61662.32, '2024-09-01', 2, 'RDC'),
(14, 'Amina', 'Benali', 'amina.benali@gmail.com', '+213-05-123-7890', 'Manager', 'Ventes', 102146.3, '2021-02-14', 2, 'Algérie'),
(15, 'Thierno', 'Ba', 'thierno.ba@gmail.com', '+221-77-789-1234', 'Développeur', 'Ressources Humaines', 90778.52, '2022-05-11', 5, 'Sénégal'),
(16, 'Luc', 'Durand', 'luc.durand@gmail.com', '+33-6-12-34-56-78', 'Analyste', 'Finance', 85000.50, '2019-04-10', 4, 'France'),
(17, 'Sophie', 'Dubois', 'sophie.dubois@outlook.com', '+32-474-12-34-56', 'Consultante', 'Informatique', 92000.00, '2021-06-15', 3, 'Belgique'),
(18, 'Hery', 'Rakoto', 'hery.rakoto@yahoo.fr', '+261-32-12-34-56', 'Responsable Marketing', 'Marketing', 65000.75, '2020-02-20', 4, 'Madagascar'),
(19, 'Clarisse', 'Ndikumana', 'clarisse.ndikumana@exemple.com', '+257-79-12-34-56', 'Développeuse Web', 'Informatique', 48000.60, '2018-11-01', 5, 'Burundi'),
(20, 'Yao', 'Komlan', 'yao.komlan@exemple.com', '+228-98-76-54-32', 'Consultant', 'Gestion', 54000.90, '2017-09-12', 4, 'Togo'),
(21, 'Ali', 'Mahamadou', 'ali.mahamadou@exemple.com', '+227-96-12-34-56', 'Analyste de Données', 'Informatique', 47000.00, '2016-05-30', 5, 'Niger'),
(22, 'Fatima', 'Djimadoum', 'fatima.djimadoum@exemple.com', '+235-99-12-34-56', 'Ingénieure Réseaux', 'Informatique', 49000.40, '2019-12-10', 4, 'Tchad'),
(23, 'Emily', 'Johnson', 'emily.johnson@gmail.com', '+1-202-555-0173', 'Data Scientist', 'Informatique', 120000.00, '2020-07-22', 5, 'États-Unis'),
(24, 'Alex', 'Smith', 'alex.smith@exemple.ca', '+1-613-555-0198', 'Analyste BI', 'Marketing', 82000.30, '2021-10-05', 3, 'Canada'),
(25, 'Pierre', 'Martin', 'pierre.martin@gmail.com', '+33-7-98-76-54-32', 'Chef de Projet', 'Opérations', 87000.00, '2017-02-18', 4, 'France'),
(26, 'Chantal', 'Van der Berg', 'chantal.berg@exemple.be', '+32-476-54-32-10', 'Développeuse Front-End', 'Informatique', 75000.25, '2022-03-30', 3, 'Belgique'),
(27, 'Jean', 'Randriamampianina', 'jean.randria@exemple.mg', '+261-33-12-34-56', 'Admin Systèmes', 'Informatique', 59000.00, '2021-12-12', 4, 'Madagascar'),
(28, 'Aimé', 'Ndayizeye', 'aime.ndayizeye@exemple.bi', '+257-78-34-12-56', 'Designer Graphique', 'Marketing', 40000.50, '2018-07-08', 5, 'Burundi'),
(29, 'Kossi', 'Mensah', 'kossi.mensah@exemple.tg', '+228-90-54-32-10', 'Spécialiste Logistique', 'Opérations', 52000.75, '2019-06-15', 4, 'Togo'),
(30, 'Aminatou', 'Idrissa', 'aminatou.idrissa@exemple.ne', '+227-94-54-32-10', 'Responsable Qualité', 'Opérations', 62000.90, '2020-09-25', 3, 'Niger');

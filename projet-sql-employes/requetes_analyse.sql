USE debutantSQL;

--Afficher les données de la table Employes
SELECT * FROM employes;
--AJouter l'auto-incrémentation à la colonne ID
ALTER TABLE Employes MODIFY ID INT AUTO_INCREMENT;

INSERT INTO Employes VALUES 
(NULL, 'Koffi', 'Kouamé', 'koffi@gmail.com', '+225-01-02-03-04', 'Analyste', 'Informatique', 85000.00, '2024-01-15', 4, 'Côte d’Ivoire');

--1. Commandes de base
--Afficher les données de la table Employes après l'insertion
SELECT * FROM employes;

--Affichez uniquement les colonnes Prénom, Nom et Pays des employés.
SELECT Prenom, Nom, pays FROM employes;

--Sélectionnez tous les employés dont le pays est la RDC.
SELECT * FROM employes WHERE pays = 'RDC';

--- Affichez les employés dont le salaire est supérieur à 100000.
SELECT * FROM employes WHERE salaire > 100000;

--Listez les employés ayant été embauchés après le 1er janvier 2020.
SELECT * FROM employes WHERE DateEmbauche > '2020-01-01';

--Affichez les employés dont le prénom commence par la lettre 'A'.
SELECT * FROM employes WHERE Prenom LIKE 'A%';

--Sélectionnez les employés qui travaillent dans le département Informatique ou Finance.
SELECT * FROM employes WHERE Departement = 'Informatique' OR Departement = 'Finance';

--Comparaison, plage, et recherche partielle

--Affichez les employés dont le pays est la RDC, le Sénégal ou le Mali.
SELECT * FROM employes WHERE pays IN ('RDC', 'Sénégal', 'Mali');

--affichez les noms, prenoms et les salaires des employés qui ne font partie ni du département Marketing ni du département Finance.
SELECT Nom, prenom, Salaire, Departement FROM employes WHERE Departement NOT IN ('Marketing','Finance') ;

--Affichez les employés dont le salaire est compris entre 70 000 et 110 000.
SELECT * FROM employes WHERE Salaire BETWEEN 70000 AND 110000;

--Affichez nom, prenom et email des employés recrutés entre le 1er janvier 2018 et le 31 décembre 2020.
SELECT Nom, Prenom , Email, DateEmbauche FROM employes WHERE DateEmbauche BETWEEN '2018-01-01' AND '2020-12-31';

--Affichez les employés dont le poste contient le mot 'Manager'.
SELECT * FROM employes WHERE poste LIKE '%manager%';

--Listez les employés dont l'évaluation de performance est différente de 5.
SELECT * FROM employes WHERE EvaluationPerformance != 5;

--Sélectionnez les employés ayant été embauchés en 2021.
SELECT * FROM employes WHERE YEAR(DateEmbauche)=2021;

--3. Tri et limites

--Triez les employés par salaire en ordre décroissant.
SELECT * FROM employes ORDER BY salaire DESC;

--Affichez les employés avec les 5 salaires les plus élevés.
SELECT * FROM employes ORDER BY salaire DESC LIMIT 5;

--Affichez les employés dans l'ordre croissant de leurs dates d'embauche.
SELECT * FROM employes ORDER BY DateEmbauche;

--Affichez les 3 premiers employés triés par leur performance
SELECT * FROM employes ORDER BY EvaluationPerformance DESC LIMIT 3;

--4. Fonctions d'agrégation

--Calculez le salaire total de tous les employés.
SELECT SUM(salaire) AS 'Salaire Total' FROM employes;

--Calculez le salaire moyen des employés
SELECT AVG(salaire) AS 'Salaire Moyen' FROM employes;


--Calculez le salaire moyen des employés du département Informatique.
SELECT AVG(salaire) AS 'Salaire Moyen Departement Informatique' FROM employes WHERE Departement = 'Informatique';

SELECT DISTINCT pays FROM employes ;

--Comptez le nombre total d'employés.
SELECT count(*) AS 'Nombre total d''employés' FROM employes;

--Comptez le nombre total de pays distincts représentés dans la table Employes.
SELECT count(distinct pays) AS 'Nombre total de pays' FROM employes;

--Calculez le salaire minimum et maximum des employés.
SELECT min(salaire) AS 'Salaire minimum', max(salaire) AS 'Salaire maximum' FROM employes;

--Calculez le salaire minimum et maximum des employés du département Marketing.
SELECT min(salaire) AS 'Salaire minimum Marketing', max(salaire) AS 'Salaire maximum Marketing' FROM employes WHERE Departement =  'Marketing';

--5. GROUP BY et HAVING
--Affichez le nombre d'employés par pays.
SELECT pays, count(*) AS 'Nombre d''employes' FROM employes GROUP BY pays;

--Affichez le salaire moyen par pays.
SELECT pays, AVG(salaire) AS 'Salaire Moyen' FROM employes GROUP BY pays;

--Affichez le salaire minimum et maximum des employés par département.
SELECT Departement, min(salaire) AS 'Salaire minimum', max(salaire) AS 'Salaire maximum' FROM employes GROUP BY Departement;

--Listez les départements ayant plus de 3 employés.
SELECT Departement, count(*) AS 'Nombre d''employes' FROM employes GROUP BY Departement HAVING count(*) > 3;

--Affichez les pays où le salaire moyen est supérieur à 70 000.
SELECT pays, AVG(salaire) AS 'Salaire moyen' FROM employes GROUP BY pays HAVING AVG(salaire) >70000;

--6. INSERT INTO et UPDATE

--Ajoutez un nouvel employé dans la table Employés.
INSERT INTO employes 
(Prenom, Nom, Email, Telephone, Poste, Departement, Salaire, DateEmbauche, EvaluationPerformance, Pays) 
VALUES
('Michel', 'Tamba', 'michel.tamba@exemple.com', '+243-818-456-789', 'Analyste', 'Finance', 60000, '2025-01-20', 4, 'Congo');

SELECT * FROM employes ;

--Mettez à jour le salaire de l'employé ayant l'ID = 5 pour qu'il soit égal à 80 000.
UPDATE employes SET salaire = 80000 WHERE ID = 5;

--Modifiez le département des employés dont le poste contient 'dev' pour qu'il devienne Développement.
UPDATE employes SET Departement = 'Développement' WHERE poste LIKE '%dev%';

--7.Autres Cas pratiques

--Affichez les employés qui ne sont pas évalués à 5 mais gagnent plus de 100 000.
SELECT * FROM employes WHERE EvaluationPerformance !=5 and salaire > 100000;

--Affichez les départements dont le salaire total dépasse 200 000.
SELECT Departement,SUM (salaire) AS 'Salaire total' FROM employes GROUP BY Departement HAVING SUM(salaire) > 200000;

--Listez les employés dont l'email contient 'gmail'.
SELECT * FROM employes WHERE Email LIKE '%gmail%';
SELECT count(*) FROM employes WHERE Email LIKE '%gmail%'; --le nombre

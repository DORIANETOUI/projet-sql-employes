# Analyse de Données RH - Projet SQL (MySQL)

## Présentation du Projet
Ce projet a été réalisé dans le cadre de mon apprentissage du langage SQL et de la gestion de bases de données relationnelles. 
Il consiste à concevoir une base de données de gestion du personnel pour une entreprise, puis à exécuter diverses requêtes d'analyse exploratoire afin de répondre à des problématiques RH (analyse de la masse salariale, répartition géographique, suivi des performances et des recrutements).

## Competences et Notions Appliquees
* **DDL (Data Definition Language) :** Création de tables (`CREATE TABLE`), définition des clés primaires et modification de structure (`ALTER TABLE`, `AUTO_INCREMENT`).
* **DML (Data Manipulation Language) :** Insertion (`INSERT INTO`) et mise à jour de données (`UPDATE`).
* **Filtrage et Recherche :** Utilisation des clauses `WHERE`, `LIKE`, `IN`, `NOT IN`, `BETWEEN` et des fonctions de date (`YEAR`).
* **Agrégation et Groupement :** Calculs statistiques (`SUM`, `AVG`, `COUNT`, `MIN`, `MAX`) combinés avec `GROUP BY` et `HAVING`.
* **Tri et Restitution :** Organisation des résultats avec `ORDER BY`, `LIMIT` et utilisation des alias (`AS`).

## Technologies Utilisees
* **SGBD :** MySQL  (WampServer)
* **Éditeur de code :** Visual Studio Code (Extension SQLTools)
* **Langage :** SQL

## Structure de la Base de Donnees
La table `Employes` regroupe les informations suivantes :
* **Identifiants et contact :** `ID` (Clé primaire auto-incrémentée), `Prenom`, `Nom`, `Email`, `Telephone`.
* **Informations professionnelles :** `Poste`, `Departement`, `Salaire`, `DateEmbauche`, `EvaluationPerformance`, `Pays`.

## Exemples de Requetes Incluses
1. **Analyse financière :** Calcul de la masse salariale globale et identification des départements dont le budget total dépasse 200 000.
2. **Répartition géographique :** Calcul du salaire moyen et décompte des effectifs par pays.
3. **Analyse de performance :** Filtrage des employés selon leurs évaluations et leurs tranches salariales.

## Structure du Depot
* `schema_et_donnees.sql` : Script de création de la table et d'insertion du jeu de données initial.
* `requetes_analyse.sql` : Ensemble des requêtes d'analyse et de manipulation de données.

## Instructions d'Execution
1. Créer une base de données MySQL nommée `debutantSQL`.
2. Exécuter le script `schema_et_donnees.sql` pour initialiser la structure et les données.
3. Exécuter le fichier `requetes_analyse.sql` pour tester les différentes requêtes d'analyse.

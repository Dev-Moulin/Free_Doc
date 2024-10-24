FreeDoc
FreeDoc est une application qui permet aux patients de réserver des rendez-vous avec des docteurs dans différentes spécialités. Le projet modélise les relations entre les docteurs, les patients, les rendez-vous, ainsi que les villes et les spécialités médicales.

Prérequis
Avant de commencer, assurez-vous que vous avez installé les éléments suivants :

Ruby version : 3.2.2
Rails version : 7.2.1.2
Système de gestion de base de données : SQLite3 (utilisé par défaut)
Installation
Étapes pour configurer et démarrer l'application :
Cloner le dépôt Git :

bash
Copier le code
git clone https://github.com/votre-utilisateur/freedoc.git
Accéder au répertoire du projet :

bash
Copier le code
cd freedoc
Installer les dépendances du projet :

Assurez-vous d'avoir installé bundler, puis exécutez la commande suivante pour installer toutes les gemmes requises par le projet :

bash
Copier le code
bundle install
Configuration
Aucune configuration spécifique n'est nécessaire à ce stade.

Création de la base de données
Créer la base de données :

Exécutez cette commande pour créer la base de données SQLite3 et appliquer les migrations :

bash
Copier le code
rails db:create
Appliquer les migrations :

Appliquez toutes les migrations pour configurer les tables dans la base de données :

bash
Copier le code
rails db:migrate
Initialisation de la base de données
Si vous voulez ajouter des données d'exemple pour tester l'application, vous pouvez utiliser le fichier seeds.rb :

bash
Copier le code
rails db:seed
Cela remplira la base de données avec des docteurs, patients, villes, spécialités et rendez-vous pour faciliter les tests.

Lancer l'application
Démarrez le serveur local Rails en utilisant la commande suivante :

bash
Copier le code
rails server
L'application sera disponible sur http://localhost:3000.

Exécution de la suite de tests
Si le projet inclut des tests, vous pouvez les exécuter avec la commande suivante :

bash
Copier le code
rails test
Cela exécutera tous les tests dans le projet pour s'assurer que l'application fonctionne comme prévu.

Modèles utilisés dans l'application
Voici un résumé des modèles utilisés dans l'application et leurs relations :

Doctor : Représente un docteur avec ses attributs (nom, prénom, spécialité, code postal). Un docteur a plusieurs rendez-vous et peut avoir plusieurs patients à travers ces rendez-vous.
Patient : Représente un patient. Un patient a plusieurs rendez-vous avec des docteurs.
Appointment : Représente un rendez-vous entre un docteur et un patient. Un rendez-vous appartient à une ville.
City : Chaque docteur, patient et rendez-vous est lié à une ville.
Specialty : Représente une spécialité médicale. Un docteur peut avoir plusieurs spécialités, et une spécialité peut concerner plusieurs docteurs.
Déploiement
Aucune instruction spécifique pour le déploiement en production. Vous pouvez utiliser des plateformes comme Heroku ou une infrastructure locale pour déployer cette application.

Auteur
Paul - Projet développé dans le cadre de la formation THP.

License
Ce projet est sous la licence MIT.


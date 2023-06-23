# Docker Compose - Guide d'utilisation
Ce projet utilise Docker Compose pour orchestrer les conteneurs et simplifier le déploiement de l'application. Docker Compose est un outil qui vous permet de décrire et de gérer des applications multi-conteneurs en utilisant un fichier de configuration YAML.

## Prérequis
Avant de commencer, assurez-vous d'avoir les éléments suivants installés sur votre machine :

Docker : Instructions d'installation de Docker
Docker Compose : Instructions d'installation de Docker Compose
Make
## Configuration
Avant de lancer l'application, vous devez effectuer quelques configurations. Assurez-vous d'avoir les valeurs suivantes définies dans votre environnement :

MYSQL_ROOT_PASSWORD : Mot de passe root pour MySQL.
DB_NAME : Nom de la base de données WordPress.
DB_USER : Nom d'utilisateur de la base de données WordPress.
DB_PASSWORD : Mot de passe de la base de données WordPress.
DOMAIN : Domaine utilisé par Caddy pour le serveur web.
## Utilisation
Pour démarrer l'application, exécutez la commande suivante :

```
make start
```
Cette commande lancera les conteneurs Docker en fonction de la configuration spécifiée dans le fichier docker-compose.yml. Les services MySQL, WordPress et Caddy seront démarrés et prêts à être utilisés.

Pour arrêter l'application et arrêter les conteneurs Docker, exécutez la commande suivante :

```
make stop
```
Cela arrêtera tous les conteneurs associés à l'application.

## Accès à l'application
Une fois l'application démarrée, vous pouvez y accéder à l'aide des URL suivantes :

WordPress : http://localhost
Caddy : http://localhost (Caddy agit en tant que serveur web et reverse proxy)
Assurez-vous que les ports 80 et 443 ne sont pas utilisés par d'autres applications sur votre machine. Si vous rencontrez des problèmes pour accéder à l'application, veuillez vérifier les configurations réseau de votre environnement.

## Conclusion
Ce fichier README fournit un guide d'utilisation pour ce projet basé sur Docker Compose. Assurez-vous d'avoir installé les prérequis, configuré les variables d'environnement appropriées et suivi les commandes make start et make stop pour démarrer et arrêter l'application Docker.

N'hésitez pas à explorer davantage Docker Compose pour en savoir plus sur ses fonctionnalités et personnaliser la configuration selon vos besoins.

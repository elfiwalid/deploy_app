# Étape 1 : Utiliser une image Java 17 légère comme base
FROM eclipse-temurin:17-jdk-alpine

# Étape 2 : Créer un répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier le fichier JAR généré par Maven
COPY target/*.jar app.jar

# Étape 4 : Exposer le port 80 (Azure redirige vers ce port)
EXPOSE 80

# Étape 5 : Lancer l'application sur le port 80 explicitement
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=80"]

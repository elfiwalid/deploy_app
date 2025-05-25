FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /app
COPY  . .
RUN mvn clean package

FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 80

# Étape 5 : Lancer l'application sur le port 80 explicitement
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=80"]

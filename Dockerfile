FROM openjdk:17-jdk-slim

WORKDIR /app

# Copia el JAR empaquetado a la imagen Docker
COPY target/mi-proyecto-1.0-SNAPSHOT.jar app.jar

# Exponer el puerto utilizado por la aplicación
EXPOSE 8080

# Ejecutar la aplicación con Java
ENTRYPOINT ["java", "-jar", "app.jar"]

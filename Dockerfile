# Usar una imagen base con OpenJDK 11
FROM openjdk:11-jdk

# Instalar Maven
RUN apt-get update && apt-get install -y maven

# Definir el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el código fuente al contenedor
COPY . .

# Ejecutar Maven para construir el proyecto
RUN mvn clean install

# Exponer el puerto (ajustar si tu aplicación usa otro)
EXPOSE 8080

# Ejecutar el archivo JAR generado por Maven
CMD ["java", "-jar", "target/java-frontend-demo-1.0-SNAPSHOT.jar"]

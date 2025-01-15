# Usa una imagen base con Maven y OpenJDK
FROM maven:3.8.4-openjdk-11

# Define el directorio de trabajo dentro del contenedor
WORKDIR /src

# Copia todos los archivos del proyecto al contenedor
COPY . .

# Ejecuta Maven para construir el proyecto
RUN mvn clean install

# Expone el puerto 8080 (puedes cambiarlo si tu app usa otro puerto)
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "target/java-frontend-demo-1.0-SNAPSHOT.jar"]

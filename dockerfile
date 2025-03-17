FROM amazoncorretto:21-alpine-jdk

WORKDIR /app

# Descarga el JAR desde GitHub Actions
ADD https://nightly.link/CasuarinasVentanillaT02/backMonoCasuarinas/workflows/build/main/my-java-app.zip /app/app.zip

# Extrae el JAR
RUN unzip /app/app.zip -d /app/ && rm /app/app.zip

# Renombra el archivo si es necesario
RUN mv /app/backendCasuarinas-0.0.1-SNAPSHOT.jar /app/app.jar

# Ejecuta el JAR
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

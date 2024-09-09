# Fase 1: Construcción
FROM eclipse-temurin:17-jdk-alpine as builder

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de configuración de Gradle
COPY gradle /app/gradle
COPY gradlew /app/
COPY build.gradle /app/
COPY settings.gradle /app/

# Descargar las dependencias necesarias para la compilación
RUN ./gradlew build --no-daemon || return 0

# Copiar el código fuente de la aplicación
COPY src /app/src

# Compilar la aplicación
RUN ./gradlew build --no-daemon

# Fase 2: Ejecución
FROM eclipse-temurin:17-jdk-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR generado desde la fase de construcción
COPY --from=builder /app/build/libs/*.jar /app/app.jar

# Exponer el puerto 8090
EXPOSE 8090

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

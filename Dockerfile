FROM eclipse-temurin:17-jre-alpine

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8761

ENTRYPOINT ["java","-Dserver.port=8761", "-jar","/app.jar"]
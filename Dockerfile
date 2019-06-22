FROM openjdk:8-jdk-alpine
ARG APP_VERSION=*.*.*

VOLUME /tmp

COPY /backend/target/backend-$APP_VERSION.war app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

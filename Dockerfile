FROM openjdk:11-jdk

VOLUME /tmp
ARG JAR_FILE=target/cakes-api-0.0.1-SNAPSHOT.jar
ARG VARIAVEL
ENV AMBIENTE=$VARIAVEL
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=${AMBIENTE}", "/app.jar"]
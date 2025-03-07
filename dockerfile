FROM openjdk:8-jdk-alpine
EXPOSE 8082
ARG JAVA_FILE_URL=http://172.17.0.1:8081/maven-releases/tn/esprit/spring/services/timesheet-devops/1.0/timesheet-devops-1.0.jar


RUN wget -O /timesheet-devops-1.0.jar "$JAVA_FILE_URL"

ENTRYPOINT ["java", "-jar", "/timesheet-devops-1.0.jar"]

FROM openjdk:8-jdk-alpine
EXPOSE 8082
ADD http://172.17.0.1:8081/maven-releases/tn/esprit/spring/services/timesheet-devops/1.0/timesheet-devops-1.0.jar
ENTRYPOINT ["java","-jar","/timesheet-devops-1.0.jar"]

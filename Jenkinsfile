pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git branch : 'master ',
                url : 'https://github.com/zeineb-m/maatallizeineb.git'
            }
        }
         stage('Compile') {
            steps {
                sh 'mvn clean compile'
            }
        }
/*
        stage('MVN Sonarqube') {
            steps {
                sh 'mvn sonar:sonar -Dsonar.login=admin -Dsonar.password=sonar -Dmaven.test.skip=true'
            }
        }
        */
  stage('MVN Nexus') {
            steps {
                sh 'mvn deploy -Dmaven.test.skip=true'
            }
        }
stage('building')
        {  steps {
           sh ' docker build -t zeinebmaatalli/timesheet-devops:1.0.0 .'
        }
        }
    stage('deploy')
        {  steps {
           sh ' docker push -t zeinebmaatalli/timesheet-devops:1.0.0'
        }
        }
    }
}

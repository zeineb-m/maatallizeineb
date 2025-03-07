pipeline {
    agent any

    tools {
        jdk "JAVA_HOME"
        maven "M2_HOME"
    }

    environment {
        MVN_CLI_OPTS = '-DskipTests'
    }

    stages {
        stage('GIT') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/zeineb-m/maatallizeineb'
            }
        }

        stage('Compile Stage') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('Package Stage') {
            steps {
                sh 'mvn package -DskipTests'
            }
        }

        stage('Building Docker Image') {
            steps {
                sh 'docker build -t zeinebmaatalli/timesheet-devops:1.0.0 .'
            }
        }
    }
}

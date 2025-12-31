pipeline {
    agent any

    tools {
        maven 'maven'
    }

    stages {

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t javaproject .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker stop javaproject || true
                docker rm javaproject || true
                docker run -d --name javaproject javaproject
                '''
            }
        }
    }
}


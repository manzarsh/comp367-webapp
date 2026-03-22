pipeline {
    agent any

    environment {
        IMAGE_NAME = "manzarsh/lab3app:latest"
    }

    stages {
        stage('Build Maven') {
            steps {
                bat '"C:\\Tools\\apache-maven-3.9.12\\bin\\mvn.cmd" clean package'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    bat 'docker login -u %USER% -p %PASS%'
                }
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Docker Push') {
            steps {
                bat 'docker push %IMAGE_NAME%'
            }
        }
    }
}

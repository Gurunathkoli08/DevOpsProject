pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t student-admission-site .'
            }
        }

        stage('Remove Existing Container') {
            steps {
                sh 'docker rm -f admission-site || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:80 --name admission-site student-admission-site'
            }
        }
    }
}

pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t student-admission-site .'
            }
        }

        stage('Remove Existing Container') {
            steps {
                bat 'docker rm -f admission-site || exit 0'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run -d -p 8080:80 --name admission-site student-admission-site'
            }
        }
    }
}

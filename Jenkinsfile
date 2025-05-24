pipeline {
    agent any

    environment {
        IMAGE_NAME = 'student-admission-site'
        CONTAINER_NAME = 'admission-site'
        PORT_MAPPING = '8080:80'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                bat "docker build -t %IMAGE_NAME% ."
            }
        }

        stage('Remove Existing Container') {
            steps {
                echo 'Removing existing Docker container if exists...'
                bat "docker rm -f %CONTAINER_NAME% || exit 0"
            }
        }

        stage('Run Docker Container') {
            steps {
                echo 'Running new Docker container...'
                bat "docker run -d -p %PORT_MAPPING% --name %CONTAINER_NAME% %IMAGE_NAME%"
            }
        }
    }

    post {
        success {
            echo "Deployment successful. Application running at http://localhost:8080"
        }
        failure {
            echo "Pipeline failed. Please check the error logs."
        }
    }
}

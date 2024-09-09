pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './gradlew build'
            }
        }

        stage('Test') {
            steps {
                sh './gradlew test'
            }
        }
    }

    post {

        failure {
            echo 'Build failed!'
        }

        success {
            echo 'Build and tests passed successfully!'
        }
    }
}
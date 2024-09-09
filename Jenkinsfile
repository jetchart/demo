pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'cd demo && ./gradlew build'
            }
        }

        stage('Test') {
            steps {
                sh 'cd demo && ./gradlew test'
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
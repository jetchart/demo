pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'ls'
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
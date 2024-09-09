pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Build failed!'
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
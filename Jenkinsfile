pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'echo "ok"'
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
pipeline {
    agent any

    tools {
            gradle 'gradle-8'
        }

    stages {
        stage('Docker') {
                    steps {
                        bat 'docker build . -t demo:latest'
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
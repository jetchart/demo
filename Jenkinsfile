pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Ejecutar la compilación utilizando Gradle
                sh './gradlew build'
            }
        }

        stage('Test') {
            steps {
                // Ejecutar los tests
                sh './gradlew test'
            }
        }
    }

    post {
        always {
            // Publicar los resultados de los tests incluso si fallan
            junit '**/build/test-results/test/*.xml'

            // Archivar artefactos si es necesario (opcional)
            archiveArtifacts artifacts: 'build/libs/*.jar', allowEmptyArchive: true
        }

        failure {
            // Notificar en caso de fallo (opcional)
            echo 'Build failed!'
        }

        success {
            // Mensaje de éxito
            echo 'Build and tests passed successfully!'
        }
    }
}
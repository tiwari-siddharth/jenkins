pipeline {
    agent any
    environment {
        CONTAINER_NAME = '6e95b6c95567' // Replace with your container name or ID
    }
    stages {
        stage('Install JDK in Container') {
            steps {
                script {
                    // Install JDK in the running container
                    sh "docker exec ${CONTAINER_NAME} apt-get update && apt-get install -y openjdk-11-jdk"
                }
            }
        }
        stage('Check Java Version in Container') {
            steps {
                script {
                    // Check Java version in the running container
                    sh "docker exec ${CONTAINER_NAME} java -version"
                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline execution completed'
        }
    }
}

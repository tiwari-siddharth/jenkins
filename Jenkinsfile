pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                cd myapp
                pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                cd myapp
                pytest
                '''
            }
        }

        stage('Deliver') {
            steps {
                echo 'Delivering....'
                // Add steps to deploy or deliver your application
            }
        }
    }
    
    post {
        failure {
            echo "Pipeline failed"
            // Add any cleanup or notification steps on failure
        }
    }
}

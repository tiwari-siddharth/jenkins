pipeline {
    agent {
        node {
            label 'docker-agent-python'
        }
    } 
            

    environment {
        PYTHON_HOME = tool name: 'Python3', type: 'hudson.plugins.python.PythonInstallation'
    }

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
                ${PYTHON_HOME}/bin/pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                cd myapp
                ${PYTHON_HOME}/bin/python -m pytest
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

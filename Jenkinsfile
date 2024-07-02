pipeline {
    agent {
        node {
            label 'docker-agent-python'
        }
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
                
            }
        }
    }
}

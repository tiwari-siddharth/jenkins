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
                python3 -m pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                cd myapp
                pyhon3 /bin/python -m pytest
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

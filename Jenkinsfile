
pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                sh 'printenv'
                
            }
        }
        stage ('Publish ECR') {
            steps {
             withEnv (["AWS_ACCESS_KEY_ID=${env.AWS_ACCESS_KEY_ID}","AWS_SECRET_ACCESS_KEY=${env.AWS_ACCESS_KEY_ID}", "AWS_DEFAULT_REGION=${env.AWS_DEFAULT_REGION}"]) {
                 sh 'docker login -u AWS -p $(aws ecr get-login-password --region us-west-1) 339713160899.dkr.ecr.us-west-1.amazonaws.com
                 sh 'docker build -t ecr-demoing .'
                 sh 'docker tag ecr-demoing:""$BUILD_ID"" '
                 sh  'docker push 339713160899.dkr.ecr.us-west-1.amazonaws.com/apache:""$BUILD_ID"" '
             }
            }
        }
    }
}

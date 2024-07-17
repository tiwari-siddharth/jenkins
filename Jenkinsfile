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
                 sh 'docker login -u AWS -p $(aws ecr get-login-password --region us-west-1) public.ecr.aws/d9s0s7x2' 
                 sh 'docker build -t ecr-demoing .'
                 sh 'docker tag ecr-demoing: public.ecr.aws/d9s0s7x2""$BUILD_ID"" '
                 sh  'docker push public.ecr.aws/d9s0s7x2/cento-7:""$BUILD_ID"" '
             }
            }
        }
    }
}
docker tag ecr-demoing:latest public.ecr.aws/d9s0s7x2

pipeline {
    agent any 
   
    stages {
         stage ('git clone') {
            steps {
        echo "code is building"
         git 'https://github.com/janisheik/new-eks.git'
            }
        }
    }

            stage('build docker docker image') {
            steps {
                echo "buid docker image"
                sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/c9e3o3h3'
                sh 'docker build -t httpd .'
                sh 'docker tag httpd:latest public.ecr.aws/c9e3o3h3/httpd:latest'               

                sh 'docker push public.ecr.aws/c9e3o3h3/httpd:latest'
             }
              }
}  

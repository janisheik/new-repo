pipeline {
  agent any 
 
  stages {
       stage ('git clone') {
          steps {
      echo "code is building"
       git 'https://github.com/janisheik/new-repo.git'
          }
      }
        stage('build docker image') {
          steps {
              echo ("build docker image")
              sh 'sudo aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/c9e3o3h3'
              sh 'sudo docker build -t httpd .'
              sh 'sudo docker tag httpd:latest public.ecr.aws/c9e3o3h3/httpd:2.4'
              sh 'sudo docker push public.ecr.aws/c9e3o3h3/httpd:2.4'
              sh 'sudo chmod 666 /var/run/docker.sock'
         
          }
       }       
    
       stage('kubectl deploy'){ 
       steps
        {
          sh 'sudo kubectl apply -f httpd.yaml'
          sh 'sudo kubectl get nodes '
          sh 'sudo kubectl get ns'
          sh 'sudo kubectl get svc'
          sh 'sudo kubectl rollout restart deployment/httpd-deployment'
           
        }
      } 
    }
 }

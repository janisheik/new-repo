pipeline {
    agent any
    environment {
        registry = "463702037504.dkr.ecr.us-east-2.amazonaws.com/public.ecr.aws/c9e3o3h3/nginx"
    }
   
    stages {
         stage ('git clone') {
            steps {
        echo "code is building"
         git 'https://github.com/janisheik/new-eks.git'
            }
        }
    }
}

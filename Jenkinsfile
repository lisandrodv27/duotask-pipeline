pipeline {
  agent any
  stages { 
    stage('Build  images') {
      steps {
        sh 'sudo docker build -t lisandrodv27/flask-app:1.0 .'
      }
    }
    
    stage('Log in & push to DockerHub') {
      steps {
        sh 'sudo docker login'
        sh 'sudo docker push lisandrodv27/flask-app:1.0'
      }
    }
    
    stage('Deploy in other VM') {
      steps {
        sh 'chmod +x deploy.sh'
        sh './deploy.sh'
      }
    }
  }
}
      

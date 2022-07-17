pipeline
{
  agent
  {
    docker { image 'fedora' }
  }
  environment
  {
      DOCKERHUB_CREDENTIALS=credentials('docker-hub')
  }
   
   stages
   {
        stage('Build')
        {
            steps
            {
                sh 'docker build -t suryaimg/img:latest -f ./Dockerfile'
             }
         }
          
         stage('Login')
         {
            steps
            {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR$ --password-stdin'
                echo 'Login Done'
             }
         }
         
         stage('Push')
         {
            steps
            {
                sh 'docker push suryaimg/img:latest'
             }
         }
     }   
     post
     {
        always
        {
            sh 'docker logout'
         }
      }
}

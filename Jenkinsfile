pipeline
{
  agent any
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
                sh 'dir'
                sh 'docker build -t suryaimg/img:latest .'
                echo 'Stage Build Done'
             }
         }
          
         stage('Login')
         {
            steps
            {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                echo 'Stage Login Done'
             }
         }
         
         stage('Push')
         {
            steps
            {
                sh 'docker push suryaimg/img:latest'
                echo 'Stage Push Done'
             }
         }
     }   
     /*post
     {
        always
        {
            sh 'docker logout'
         }
      }*/
}

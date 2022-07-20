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
                sh 'pwd'
                sh 'ls -ltr'
              
                sh 'docker build -t suryaimg:latest .'
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
                sh 'docker push msuryateja/suryaimg:latest'
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

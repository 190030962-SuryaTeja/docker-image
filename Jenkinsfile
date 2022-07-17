pipeline
{
  agent any
  environment
  {
      DOCKERHUB_CREDENTIALS = credentials('docker-hub')
   }
   
   stages
   {
        stage('Build')
        {
            steps
            {
                sh 'docker build suryaimg .'
             }
         }
          
         stage('Login')
         {
            steps
            {
                sh 'docker login -u $DOCKERHUB_CREDENTIALS --password-stdin'
             }
         }
         
         stage('Push')
         {
            steps
            {
                sh 'docker push suryaimg '
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

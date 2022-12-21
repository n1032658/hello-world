pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub-cred')
	}

	stages {
	
	stage('Continuous Download') 
   
	 {
	 steps {
  git 'https://github.com/n1032658/hello-world'
	 }}
	 
stage("maven build") {
	     
	     steps{
	         
	      sh 'mvn package' 
	    
	      
	       sh "pwd"
    dir('/home/ubuntu/.jenkins/workspace/PushDockerImage/webapp/target/') {
      sh "pwd"
      sh "ls"
      sh "sudo cp webapp.war /opt/docker"
    }
    sh "pwd"
    
    
	     }
	 }
	
stage("build") {
  steps {
      sh 'docker build -t  mdasari8019/regapp:latest  .'
  }
    }

	
		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push mdasari8019/regapp:latest'
			}
		}
	}



}
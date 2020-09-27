pipeline {
    agent none
    stages {
        stage('Stage 1') {
            steps {
                 echo "Build the application"
                 build job: '001.Build-App-WebCalculator'
                
            }
        }
        
        stage('Stage 2') {
            
            steps {
                echo "Creating a Docker image and uploading to hub.docker.com"
                build job: '002.Create-Docker-Image'

            }
        }
        stage('Stage 3') {
            
            steps {
                echo "Uploading and creating the load balancer"
                build job: 'Test-K8-Job'

            }
        }
    }
}
/* this works above good calling multiple job, below I am still trying to incorporate everything as script not successful still trying. 
pipeline {
    agent none
    stages {
        stage('Stage 1') {
            agent { label 'CENO-DOCKER-MASTER' }
            steps {
                 echo "Cloning the GitHub repo and building the applicatin using Maven compiler"
                 git branch: 'test-from-master', url: 'https://github.com/svkvc1980/project.git'
                 sh 'mvn clean compile package'
                 sh 'sudo rm -rf /home/centos/project-war-file-location/*'
                 sh 'cp -i -p /home/centos/jenkindockernode/workspace/TEST-PIPELINE-BUILD-DOCKER-K8-PROD-8080/target/*.war /home/centos/project-war-file-location/app.war'
                
            }
        }
        
        stage('Stage 2') {
            agent { label 'CENO-DOCKER-MASTER' }
            steps {
                echo "Creating a Docker image and uploading to hub.docker.com"
                sh 'mkdir -p Module2'
                dir("Module2")
                {
                git branch: "TEST",
                url: 'https://github.com/svkvc1980/devops.git'
                }
                sh 'cp -p -i /home/centos/project-war-file-location/app.war /home/centos/jenkindockernode/workspace/TEST-PIPELINE-BUILD-DOCKER-K8-PROD-8080/Module2/'
                sh 'num=$(cat /home/centos/project-war-file-location/increment-file.txt)'
                sh 'cp -i -p /home/centos/project-war-file-location/app.war'
                sh 'cd /home/centos/project-war-file-location/'
                sh 'docker build -t vinaydockersince1980/vinaydockerrepo:webcalc-"$num" .'
                sh 'sh /home/centos/project-war-file-location/increment.sh'
                sh 'docker push vinaydockersince1980/vinaydockerrepo:webcalc-"$num"'
                sh 'docker image rm -f vinaydockersince1980/vinaydockerrepo:webcalc-$num tomcat:7-alpine'
                sh 'docker images'
                sh 'docker container ls'
                sh 'docker container ls -a'

            }
        }
    }
}
Until here*/
/* this works above is testing to incorporate everything into one 
pipeline{

  agent { label 'CENO-DOCKER-MASTER' }

  stages{
      stage('checkout'){
            steps{
        git branch: 'test-from-master', url: 'https://github.com/svkvc1980/project.git'
    }
}
      stage('Build') {
            steps {
            sh 'echo "Builing the Maven Java application"'
            sh 'mvn clean compile package'
            sh 'sudo rm -rf /home/centos/project-war-file-location/app.war'
	    sh 'cp -i -p /home/centos/jenkindockernode/workspace/TEST-PIPELINE-BUILD-DOCKER-K8-PROD-8080/target/*.war /home/centos/project-war-file-location/app.war'
            }
            }
  }

}
until here */
/*
pipeline{
  
  agent { label 'LIN-ANSIBEL-MASTER-172-31-33-11' }

  stages{
      stage('checkout'){
            steps{
        git branch: 'PROD-TOMCAT-8080', url: 'https://github.com/svkvc1980/tomcat-ansible.git'
    }
}
      stage('Build') {
            steps {
            sh 'echo "Executing ansible command"'
            sh 'ansible-playbook -i hosts tomcat-setup.yml'
            }
            }
  }

}

*/
/* This is pretty basic
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Executing ansible command"'
                //sh 'cd /home/centos/tomcat-8080/tomcat-ansible/'
		//sh 'ansible-playbook -i hosts tomcat-nodes tomcat-setup.yml'
		    sh 'ansible-playbook -i hosts tomcat-setup.yml -vvv' 
            }
        }
    }
}
*/

pipeline {
    agent any
  tools{
      maven 'maven'
  }
    stages 
    {
        stage('Clone the code') {
            steps {
               git 'https://github.com/SikindharBasha/onlinebookstore-master.git'
            }
        }
        stage('Build the code') {
            steps {
              sh 'mvn clean install'
            }
        }
         stage('depoly to server') {
            steps {
             deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://13.201.22.11:8081/')], contextPath: null, war: '**/*.war'
            }
        }
         stage('docker iamge create') {
            steps {
            sh 'docker build -t ashokimage .'
                sh 'docker images'
                sh 'docker tag ashokimage sikindharbasha/myapplication:latest'
                
            }
        }
         stage('docker registry') {
            steps {
           // This step should not normally be used in your script. Consult the inline help for details.
withDockerRegistry(credentialsId: 'dockerid', url: 'https://hub.docker.com/repositories/sikindharbasha') {
  sh 'docker push sikindharbasha/myapplication:latest'
}
                
            }
        }
       
    }
}

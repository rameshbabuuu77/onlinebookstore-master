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
       
    }
}

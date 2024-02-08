pipeline {
    agent any
    tools
    maven 'maven'
    stages {
        stage('clone the code') {
            steps {
                git 'https://github.com/rameshbabuuu77/onlinebookstore-master.git'
            }
        }
        stage('build the code') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('docker image') {
            steps {
                sh 'docker build -t ramesh .'
                
            }
        }
    }
}

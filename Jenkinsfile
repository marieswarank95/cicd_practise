pipeline {
    environment {
        DOCKERHUB_CREDENTIALS = credentials('docker-hub-credentials')
    }
    /*agent {
        docker {image 'node:12.0'}
    }*/
    agent any
    stages {
        stage ("docker hub login") {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage ("image build and push") {
            steps {
                sh '''docker build -t marieswaran/cicd_practise .
                      docker push marieswaran/cicd_practise'''
            }
        }
    }
}
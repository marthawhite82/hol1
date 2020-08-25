pipeline {
    agent any
    tools {
        maven 'M2_HOME'
    }

    stages {
        
        stage('build') {
            steps {
                echo 'Hello build'
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
            }
        }
         stage('test') {
            steps {
                sh 'mvn test'
                
                
            }
        }
         stage('build and push image') {
            steps {
                script {
                    checkout scm
                    docker.withRegistry('', 'DockerregistryID') {
                        def customImage = docker.build("manawa/hol-pipeline):${env.BUILD_ID}")
                        customImage.push()
                    }
                }
                
            }
        }
    }
}


pipeline {
    agent any
    tools {
        maven 'M2_HOME'
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                sleep 2
            }
        }
        stage('build') {
            steps {
                echo 'Hello build'
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
            }
        }
         stage('deploy') {
            steps {
                echo 'Hello deploy'
                sleep 2
            }
        }
         stage('test') {
            steps {
                echo 'Hello test'
                sleep 2
            }
        }
    }
}


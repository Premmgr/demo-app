pipeline {
    agent any
    
    triggers {
        pollSCM('*/1 * * * *')
    }
    
    stages {
        stage('verification') {
            steps {
                sh './verification.sh'
                sh 'echo "verification finished"'
            }
        }
	stage('Build') {
            steps {
                sh 'echo "Building..."'
                sh 'docker-compose up -d'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
                sh 'curl -l localhost:90'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying..."'
                sh 'echo "deploy done"'
            }
        }
    }
}

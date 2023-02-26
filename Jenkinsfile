pipeline {
    agent any
    
    triggers {
        pollSCM('*/1 * * * *')
    }
    
    stages {
        stage('verification') {
            steps {
                bash 'demo-app/verification.sh'
                bash 'echo "verification finished"'
            }
        }
	stage('Build') {
            steps {
                bash 'echo "Building..."'
                bash 'docker-compose up -d'
            }
        }
        stage('Test') {
            steps {
                bash 'echo "Running tests..."'
                bash 'curl -l localhost:90'
		bash 'docker-compose down'
            }
        }
        stage('Deploy') {
            steps {
                bash 'echo "Deploying..."'
                bash 'echo "deploy done"'
            }
        }
    }
}

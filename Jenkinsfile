//Check webhook, now we have 8 builds
pipeline {
    agent {
        label 'workers'
    }
    stages {
        stage('Checkout SCM') {
            steps {
                git branch: 'develop',
                        credentialsId: 'github-ssh-from-jm',
                        url: 'git@github.com:oleksiihead/films-loader.git'
            }
        }
    }
}

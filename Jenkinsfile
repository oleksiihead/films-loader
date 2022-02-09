#!/usr/bin/env groovy

node('workers') {
    stage('Checkout SCM') {
        git branch: 'develop',
                credentialsId: 'github-ssh-from-jm',
                url: "ssh://git@github.com:oleksiihead/films-loader.git"
    }
}

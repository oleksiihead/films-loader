def imageName = 'oleksiihead/films-loader'

node('workers') {
    stage('Checkout SCM') {
        checkout scm
    }

    stage('Unit tests') {
        sh "docker build -t ${imageName}-test -f Dockerfile.test ."
        sh "docker run --rm ${imageName}-test"
    }
}

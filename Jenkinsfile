def imageName = 'oleksiihead/films-loader'

node('workers') {
    stage('Checkout SCM') {
        checkout scm
    }

    stage('Unit tests') {
//        sh "docker build -t ${imageName}-test -f Dockerfile.test ."
//        sh "docker run --rm ${imageName}-test"
        def imageTest = docker.build("${imageName}-test", "-f Dockerfile.test .")
        sh "docker run --rm -v $PWD/reports:/app/reports ${imageName}-test"
        junit "**/reports/*.xml"
    }
}

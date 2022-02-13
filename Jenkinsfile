def imageName = 'oleksiihead/films-loader'

node('workers') {
    stage('Checkout SCM') {
        checkout scm
    }

    stage('Unit tests') {
        def imageTest = docker.build("${imageName}-test", "-f Dockerfile.test .")
        sh "docker run --rm -v ${env.WORKSPACE}/reports:/app/reports ${imageName}-test"
        junit 'reports/*.xml'
    }
}

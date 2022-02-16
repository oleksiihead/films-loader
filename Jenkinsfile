def imageName = "oleksiihead/films-loader"
//def registry = 'https://registry.smiichuk.click'

node('workers'){
    stage('Checkout'){
        checkout scm
    }

    stage('Unit Tests'){
        def imageTest= docker.build("${imageName}-test", "-f Dockerfile.test .")
        sh "docker run --rm -v $PWD/reports:/app/reports ${imageName}-test"
        //junit "$PWD/reports/*.xml"
        junit "**/reports/*.xml"
    }

    stage('Build'){
        docker.build(imageName)
    }

    stage('Push') {
        docker.withRegistry('', 'dockerhub-oleksiihead') {
            docker.image(imageName).push(commitID())

            if (env.BRANCH_NAME == 'develop') {
                docker.image(imageName).push('develop')
            }
        }
    }
}

def commitID() {
    sh 'git rev-parse HEAD > .git/commitID'
    def commitID = readFile('.git/commitID').trim()
    sh 'rm .git/commitID'
    commitID
}

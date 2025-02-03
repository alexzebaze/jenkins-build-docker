
node('wsl-agent') {
    def registryProjet = 'registry.gitlab.com/zebaze/tuto-jenkins'
    def IMAGE = "${registryProjet}:version-${env.BUILD_ID}"

    stage('Clone') {
        git 'https://github.com/alexzebaze/jenkins-build-docker.git'
    }

    def img = stage('Build') {
        docker.build("$IMAGE", '.')
    }

    stage('Run') {
        img.withRun("--name run-$BUILD_ID -p 80:80") { c ->
            sh 'curl localhost'
        }
    }

    stage('Push') {
        docker.withRegistry('https://registry.gitlab.com', 'wsl-agent') {
            img.push('latest')
            img.push()
        }
    }
}

pipeline {
    agent { label 'wsl-agent' }
    stages {
        stage('Check Git Path') {
            steps {
                sh 'which git'  // Vérifier le chemin Git
                sh 'git --version'  // Vérifier si Git fonctionne bien
            }
        }
    }
}

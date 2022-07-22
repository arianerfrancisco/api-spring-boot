pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                sh "mvn clean install"
            }
        }
        stage("deploy") {
            steps {
                sh "docker build -t cake-api-hml:latest ."
                sh "docker run -d -p 8081:8081 cake-api-hml:latest"
            }
        }
    }
}
pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh '/opt/homebrew/bin/mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "pwd"
                sh "ls -a"
                sh "/usr/local/bin/docker build . -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }

    }
}

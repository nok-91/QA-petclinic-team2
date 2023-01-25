pipeline{
    agent any
        environment {
        }
        stages{
            stage('Test App'){
                steps{
                    sh "./scripts/test.sh"
                }
            }
            stage('Setup Cluster'){
                steps{
                    sh "./scripts/setup-cluster.sh"
                }
            }
            stage('Build Images'){
                steps{
                    sh "./scripts/docker-build.sh"
                }
            }
            stage('Deploy'){
                steps{
                    sh "./scripts/deploy.sh"
                }
            }
        }
}
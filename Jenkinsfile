pipeline {
    agent any

    stages {
        // stage('Run unit tests') {
        //     steps {
        //         echo 'Running tests....'
              
        //     }
        // }
        // stage('Run Terraform') {
        //     steps {
        //         echo 'Build infrastructure....'
        //         dir("terraform") {
        //            //script
        //         }
        //     }
        stage('build and push docker images'){
            steps {
                script{
                    withCredentials([string(credentialsId: 'dockerpass', variable: 'dockerpass')]) {
                        
                        sh "sudo -S docker login -u nokdev -p ${dockerpass}"
                        sh "sudo chmod +x ./scripts/docker-build.sh"
                        sh "./scripts/docker-build.sh"
                    }
                }
            }
        }

        // stage('Install dependencies on EC2') {
        //     steps {
        //         echo 'Ansible connection..'
        //         ansiblePlaybook credentialsId: 'petclinic', disableHostKeyChecking: true, installation: 'ansible-config', inventory: 'inventory.yaml', playbook: 'playbook.yaml'
        //     }
        // }
        stage('Deploy') {
            steps {
                echo 'Deploy..'
            }
        }
    }
}















// pipeline{
//     agent any
//         environment {

//         }
//         stages{
//             stage('Test App'){
//                 steps{
//                     sh "./scripts/test.sh"
//                 }
//             }
//             stage('Setup Cluster'){
//                 steps{
//                     sh "./scripts/setup-cluster.sh"
//                 }
//             }
//             stage('Build Images'){
//                 steps{
//                     sh "./scripts/docker-build.sh"
//                 }
//             }
//             stage('Deploy'){
//                 steps{
//                     sh "./scripts/deploy.sh"
//                 }
//             }
//         }
// }
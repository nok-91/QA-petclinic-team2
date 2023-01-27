pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                echo 'Installing dependencies....'
                // dir("scripts") {
                //     // install ansible
                //     sh "ls"
                //     sh "sudo chmod +x install-ansible.sh"
                //     sh "./install-ansible.sh"
                //     //install terraform
                //     sh "ls"
                //     sh "sudo chmod +x install-terraform.sh"
                //     sh "./install-terraform.sh"
                    
                //     // added check to see if terraform tfstate exists
                //     // then run terraform destroy (destroys all network/ec2)
                //     script{
                //         if(fileExists('terraform/terraform.tfstate')){
                //             sh 'terraform destroy -auto-approve'
                //         }
                //     }
                // }
            }
        }
        // stage('Run Terraform') {
        //     steps {
        //         echo 'Build infrastructure....'
        //         dir("terraform") {
        //             // sh "terraform destroy -auto-approve"
        //             sh "terraform init"
        //             sh "terraform plan"
        //             sh "terraform apply -auto-approve"
        //         }
        //     }
        // }
        // stage('run config playbook'){
        //     steps{
        //         sh "git clone https://github.com/Adamcoakley/team-magenta-group-two.git"
        //         sh "ansible-playbook config.yaml"
        //     }
        // }
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
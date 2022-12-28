pipeline {
    agent any
    stages {
        stage('Git checkout') {
            steps {
                echo 'clone project code'
                git branch: 'main', url: 'https://github.com/jaysotu50/test-cicd.git'
                sh 'ls'
            }
        }
        stage('Verify Terraform Version'){
            steps {
                echo 'Verifying the Terraform version...'
                sh 'terraform --version'
            }
        }
        stage('Terraform Init'){
            steps {
                echo 'Initialiazing terraform project...'
                // dir("3-tier-architecture-implementation")
                sh 'terraform init'
            }
        }
        stage('Terraform Validate'){
            steps {
                echo 'Performing terraform validate for syntax check...'
                sh 'terraform validate'
            }
        }
        stage(' Create Terraform Workspace'){
            steps {
                echo 'Terraform plan for the dry run...'
                sh 'touch sbx.tfvars'
                // sh '''
                // touch sbx.tfvars
                // terraform workspace select sbx.tfvars
                // '''
            }
        }
        stage('Terraform Plan'){
            steps {
                echo 'Terraform plan for the dry run...'
                // sh 'terraform plan -var-file sbx.tfvars'
                sh 'terraform plan --var-file="sbx.tfvars"'
            }
        }
        stage('CheckOv Scan'){
            steps {
                sh  """
                sudo pip3 install checkov
                checkov -d . --skip-check CKV_AWS_149,CKV_AWS_157,CKV_AWS_129,CKV_AWS_226,CKV_AWS_16,CKV_AWS_118,CKV_AWS_161,CKV_AWS_126,CKV_AWS_135,CKV_AWS_79,CKV_AWS_8,CKV_AWS_260,CKV_AWS_23,CKV2_AWS_5,CKV2_AWS_11,CKV2_AWS_12
                """
            }
        }
        stage('Manual Approval'){
            steps {
                input 'Approval required for deployment'
            }
        }
        stage('Terraform Apply'){
            steps {
                echo 'Terraform apply...'
                sh 'terraform apply -var-file sbx.tfvars --auto-approve'
            }
        }
    //     stage('Terraform Destroy'){
    //         steps {
    //             echo 'Terraform destroy...'
    //             sh 'terraform destroy -var-file sbx.tfvars --auto-approve'
    //         }
    //     }
    }
}
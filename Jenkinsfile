pipeline {
    agent any
    parameters {
    booleanParam(name: 'TF_INIT', defaultValue: 'true', description: '')
    booleanParam(name: 'TF_VALIDATE', defaultValue: 'true', description: '')
    booleanParam(name: 'TF_PLAN', defaultValue: 'true', description: '')
    booleanParam(name: 'TF_APPLY', defaultValue: 'true', description: '')
    booleanParam(name: 'TF_DESTROY', defaultValue: 'true', description: '')
  }
    stages{
         stage('Terraform Init') { 
             when {
                expression { params.TF_INIT  }
        }
            steps {
              sh 'terraform init -migrate-state -force-copy'
            }
         }
         stage('Terraform Validate') {
             when {
                expression { params.TF_VALIDATE }
        }
            steps {
                sh 'terraform validate'
            }
         }
        stage('Terraform Plan') { 
            when {
                expression { params.TF_PLAN  }
        }
            steps {
               sh 'terraform plan'
           }
        } 
        stage('Terraform Apply'){
         when {
                expression { params.TF_APPLY  }
        }
        steps{
          sh 'terraform apply -auto-approve'
        }
    }
     stage('Terraform Destroy'){
         when {
                expression { params.TF_Destroy  }
        }
        steps{
          sh 'terraform Destroy -auto-approve'
        }
    }   
 }
}












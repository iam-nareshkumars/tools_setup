pipeline {
 agent any 
 options {
        ansiColor('xterm')
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: "3"))
}

 parameters {
       
         choice(name: 'TOOLS', choices: ['vault', 'other'], description: 'select tool name to provision')
         choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'select terraform options')
        

        }   
 stages {
    stage ('initiating terraform'){
          steps {
             sh "terraform init -reconfigure -backend-config=tools/state.tf"

                }
            }
   

    // stage('Sanity check before terraform apply') {
    //         steps {
    //             input "Click on Yes to approve terraform apply"
    //         }
    //     }

    stage('Terraform apply') {
    
        steps {
            sh "terraform plan"
            sh "terraform ${params.ACTION}  -auto-approve"
              }
            }

        }
}
    

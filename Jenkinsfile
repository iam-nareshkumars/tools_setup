pipeline {
 agent any 
 options {
        
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: "3"))
}

 parameters {
       
         choice(name: 'TOOLS', choices: ['vault','prometheus','jenkins'], description: 'select tool name to provision')
         choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'select terraform options')
        

        }   
 stages {
    stage ('initiating terraform'){
          steps {
              sh "terraform --version"
             sh "rm -rf .terraform*"
             sh "terraform init -reconfigure"
}
            }
   

    // stage('Sanity check before terraform apply') {
    //         steps {
    //             input "Click on Yes to approve terraform apply"
    //         }
    //     }

    stage('Terraform apply/destroy') {
    
        steps {
            sh "terraform plan  -target=module.tools[${params.TOOLS}]"
            
              }
            }

        }
}
    

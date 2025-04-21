pipeline {
 agent any 
 options {
        
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: "3"))
}

 parameters {
       
         choice(name: 'TOOLNAME', choices: ['vault'], description: 'select tool name to provision')
         
        

        }   
 stages {
    stage ('running ansible playbbok'){
          steps {
             
             sh "bash setup.sh ${params.TOOLNAME}"
}
            }
   
  

        }
}
    

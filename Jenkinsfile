pipeline {
  agent { label 'terraform' }
  stages {
    stage('FMT') {
        steps {
            sh 'terraform fmt -check -diff -write'
        }
    }
    stage('Validate') {
        steps {
            sh 'terraform init'
            sh 'terraform validate -check-variables=false'
        }
    }
  }
}

pipeline {
  agent any

  stages {
    stage('Unit-Test') {
      node('master') {
        steps {
          echo 'Unit testing..'
          sh "rubocop ."
          sh "foodcritic ."
          sh "chef exec rspec -f documentation -c"
          sh "pwd"
          sh "hostname"
          sh "ls -al"
        }
      }
    }
    stage('Build') {
        steps {
            echo 'Building..'
        }
    }
    stage('Test') {
        steps {
            echo 'Testing..'
        }
    }
    stage('Deploy') {
        steps {
            echo 'Deploying....'
        }
    }
  }
}
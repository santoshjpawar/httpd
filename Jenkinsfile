pipeline {
  agent any

  stages {
    stage('Unit-Test') {
      steps {
        echo 'Unit testing..'
        sh "rubocop ."
        sh "foodcritic ."
        sh "chef exec rspec"
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
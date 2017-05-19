pipeline {
    agent any

    stages {
      stage('Unit-Test') {
          steps {
              echo 'Unit testing..'
              rubocop .
              foodcritic .
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
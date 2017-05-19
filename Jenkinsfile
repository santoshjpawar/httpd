node('master') {

  stage 'Unit-Test'
  echo 'Unit testing..'
  sh "rubocop ."
  sh "foodcritic ."
  sh "chef exec rspec -f documentation -c spec"
  sh "pwd"
  sh "hostname"
  sh "ls -al"

  stage 'Build'
  echo 'Building..'
  
  stage 'Test'
  echo 'Testing..'
  
  stage 'Deploy'
  echo 'Deploying....'
}
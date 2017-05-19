# Run on 'master' node
node('master') {

  stage 'Unit-Test'
  echo 'Unit testing..'
  sh "rubocop ."
  sh "foodcritic ."
  sh "chef exec rspec -f documentation | grep -v ' WARN: '"
  
  stage 'Integration-Test'
  echo 'Integration testing..'
  
  stage 'Build-And-Store'
  echo 'Building and storing artifacts..'
}
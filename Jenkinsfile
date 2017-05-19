#!groovy​

stage 'Unit-Test'
node('master') {
  echo 'Unit testing..'
  sh "rubocop ."
  sh "foodcritic ."
  sh "chef exec rspec -f documentation | grep -v ' WARN: '"
}

stage 'Integration-Test'
echo 'Integration testing..'

stage 'Build-And-Store'
echo 'Building and storing artifacts..'
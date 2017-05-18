# # encoding: utf-8
# Inspec test for recipe http::default

# Check if user 'root' exists
unless os.debian?
  describe user('apache') do
    it { should exist }
  end
end

# Make sure port 80 is listening
describe port(80) do
  it { should_not be_listening }
end

# File is copied in /tmp directory
describe file('/tmp/zabbix-2.4.7-1.el6.x86_64.rpm') do
  it { should be_file }
end

# Failure case to check non-existing file
# describe file('/zabbix-2.4.7-1.el6.x86_64.rpm') do
#  it { should be_file }
# end

require 'chefspec'

describe 'httpd::default' do
  context 'when on centos' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'centos', version: '7.0').converge(described_recipe) }
    
    it "should create cookbook file using 'cookbook_file'" do
      expect(chef_run).to create_cookbook_file('/tmp/zabbix-2.4.7-1.el6.x86_64.rpm')
    end
    
    it "should install net-tools using 'package'" do
      expect(chef_run).to install_package('net-tools')
    end
    
    it "should install apache using 'package'" do
      expect(chef_run).to install_package('httpd')
    end
  end
  
  context 'when on ubuntu' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04').converge(described_recipe) }
    
    it "should create cookbook file using 'cookbook_file'" do
      expect(chef_run).to create_cookbook_file('/tmp/zabbix-2.4.7-1.el6.x86_64.rpm')
    end

    it "should install net-tools using 'package'" do
      expect(chef_run).to install_package('net-tools')
    end
    
    it "should install apache using 'package'" do
      expect(chef_run).to install_package('apache2')
    end
  end
end
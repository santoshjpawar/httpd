require 'chefspec'

describe 'httpd::default' do
  context 'when on redhat' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'centos', version: '7.0').converge(described_recipe) }
    
    it "should have default install_method 'package'" do
      expect(chef_run).to install_package('net-tools')
    end
    
    it "should have default install_method 'package'" do
      expect(chef_run).to install_package('httpd')
    end
  end
  
  context 'when on ubuntu' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04').converge(described_recipe) }

    it "should have default install_method 'package'" do
      expect(chef_run).to install_package('net-tools')
    end
    
    it "should have default install_method 'package'" do
      expect(chef_run).to install_package('apache2')
    end
  end
end
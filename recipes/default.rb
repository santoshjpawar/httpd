#
# Cookbook:: httpd
# Recipe:: default
#

cookbook_file 'zabbix-2.4.7-1.el6.x86_64.rpm' do
  path '/tmp/zabbix-2.4.7-1.el6.x86_64.rpm'
  action :create
end

package 'net-tools' do
  action [:install]
end

package 'install apache' do
  case node['platform']
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
  action [:install]
end
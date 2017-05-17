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

package 'httpd' do
  action [:install, :upgrade]
end

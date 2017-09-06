#
# Cookbook:: httpd
# Recipe:: service
#
# Copyright:: 2017, The Authors, All Rights Reserved.

service 'httpd' do
  service_name node['httpd']['service_name']
  action [:enable, :start]
end

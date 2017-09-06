#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'httpd'
file '/var/www/html/index.html' do
  action :delete
end
httpd_vhost 'welcome' do
  action :remove
  notifies :restart, 'service[httpd]'
end
httpd_vhost 'admins' do
  site_port 8080
  notifies :restart, 'service[httpd]'
end
httpd_vhost 'users' do
  notifies :restart, 'service[httpd]'
end
service 'httpd' do
  action [:enable, :start]
end

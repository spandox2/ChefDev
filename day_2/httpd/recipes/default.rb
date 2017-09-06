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
  site_name 'welcome'
  action :remove
end
httpd_vhost 'admins' do
  action :create
  site_name 'admins'
  site_port 8080
end
httpd_vhost 'users' do
  action :create
  site_name 'users'
  site_port 80
end
service 'httpd' do
  action [:enable, :start]
end

#
# Cookbook:: httpd
# Recipe:: include
#
# Copyright:: 2017, The Authors, All Rights Reserved.a


template node['httpd']['index_location'] do
  source "index.html.erb"
  mode '0644'
end

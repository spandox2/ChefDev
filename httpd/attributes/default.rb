
default['httpd']['cookbookname'] = 'httpd'
default['httpd']['index_location'] = '/var/www/html/index.html'
case node['platform']
when 'ubuntu'
  default['httpd']['package_name'] = 'apache2'
  default['httpd']['service_name'] = 'apache2'
when 'centos'
  default['httpd']['package_name'] = 'httpd'
  default['httpd']['service_name'] = 'httpd'
else
  # best guess, but may fail
  default['httpd']['package_name'] = 'httpd'
  default['httpd']['service_name'] = 'httpd'
end

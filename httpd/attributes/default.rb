#require 'pry'
#binding.pry

default['httpd']['cookbookname']='httpd'
default['httpd']['service_name']='httpd'
default['httpd']['index_location']='/var/www/html/index.html'
case node['platform']
when 'ubuntu'
  default['httpd']['package_name']='apache2'
  default['httpd']['service_name']='apache2'
when 'centos'
  default['httpd']['package_name']='httpd'
end

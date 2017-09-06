name 'httpd'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures httpd'
long_description 'Installs/Configures httpd'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
issues_url 'https://github.com/spandox2/ChefDev/tree/master/day_2/httpd/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
source_url 'https://github.com/spandox2/ChefDev/tree/master/day_2/httpd' if respond_to?(:source_url)
supports 'centos', '> 6.04'
supports 'ubuntu', '> 14.04'

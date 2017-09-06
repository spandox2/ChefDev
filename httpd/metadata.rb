name 'httpd'
maintainer 'Mike Sandler'
maintainer_email 'michael.sandler@state.de.us'
license 'All Rights Reserved'
description 'Installs/Configures httpd'
long_description 'Installs/Configures httpd'
version '0.2.1'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/spandox2/ChefDev/httpd/issues'

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/spandox2/ChefDev/httpd'
supports 'centos', '> 6.04'
supports 'ubuntu', '> 14.04'

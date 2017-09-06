#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe node['httpd']['cookbookname'] + '::install'
include_recipe node['httpd']['cookbookname'] + '::configuration'
include_recipe node['httpd']['cookbookname'] + '::service'

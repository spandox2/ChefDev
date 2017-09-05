#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "#{node[:cookbookname]}::install"
include_recipe "#{node[:cookbookname]}::configuration"
include_recipe "#{node[:cookbookname]}::service"

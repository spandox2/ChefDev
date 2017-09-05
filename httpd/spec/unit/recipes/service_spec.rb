#
# Cookbook:: httpd
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::service' do
  context 'When all attributes are default, on an Centos 6.7' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'Enables a service with an explicit action' do
      expect(chef_run).to enable_service("#{chef_run.node[:httpd][:service_name]}")
    end
    it 'Starts a service with an explicit action' do
      expect(chef_run).to start_service("#{chef_run.node[:httpd][:service_name]}")
    end 
  end
end

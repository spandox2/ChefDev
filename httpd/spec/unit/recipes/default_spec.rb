#
# Cookbook:: httpd
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::default' do
  context 'When all attributes are default, on an unspecified platorm' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'includes the install recipe' do
      expect(chef_run).to include_recipe("#{chef_run.node[:httpd][:cookbookname]}::install")
    end
    it 'includes the configuration recipe' do
      expect(chef_run).to include_recipe("#{chef_run.node[:httpd][:cookbookname]}::configuration")
    end
    it 'includes the service recipe' do
      expect(chef_run).to include_recipe("#{chef_run.node[:httpd][:cookbookname]}::service")
    end
  end
end

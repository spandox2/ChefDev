#
# Cookbook:: httpd
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::configuration' do
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
    it 'creates a template with the default action' do
      expect(chef_run).to create_template("#{chef_run.node[:httpd][:index_location]}")
    end
    context 'file' do
      it 'renders the file' do
        expect(chef_run).to render_file("#{chef_run.node[:httpd][:index_location]}").with_content('Welcome Home')
      end
    end
  end
end

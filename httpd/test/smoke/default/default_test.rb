# # encoding: utf-8

# Inspec test for recipe httpd::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe port(80) do
  it { should be_listening }
end

describe command('curl http://localhost') do
  its(:stdoit){ should match(/Welcome Home/) }
end

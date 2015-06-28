require 'serverspec'

set :backend, :exec

describe package('git') do
  it { should be_installed }
end

describe file('/home/mtester/.gitconfig') do
  it { should be_file }
  its(:content) { should contain 'email = dude@tester.com' }
end

describe file('/home/mtester/.gitignore-global') do
  it { should be_file }
  its(:content) { should contain '.DS_Store' }
end

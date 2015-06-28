require 'serverspec'

set :backend, :exec

describe package('git') do
  it { should be_installed }
end

describe file('/home/mtester/.gitconfig') do
  it { should be_file }
  its(:content) { should_not contain /email = dude@tester\.com/ }
end

describe file('/home/mtester/.gitconfig-global') do
  it { should be_file }
  its(:content) { should_not contain /\.DS_Store/ }
end

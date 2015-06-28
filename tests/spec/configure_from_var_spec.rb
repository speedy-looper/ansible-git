require 'serverspec'

set :backend, :exec

describe file('/home/mtester/.gitconfig') do
  it { should be_file }
  its(:content) { should_not contain /email = thedude@tester\.com/ }
end

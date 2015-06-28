require 'serverspec'

set :backend, :exec

describe file('/home/mtester/.gitconfig') do
  it { should be_file }
  its(:content) { should contain 'email = thedude@tester.com' }
end

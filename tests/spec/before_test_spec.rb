require 'serverspec'

set :backend, :exec

describe package('git') do
  it { should_not be_installed }
end

describe file('/home/mtester/.gitconfig') do
  it { should_not be_file }
end

describe file('/home/mtester/.giconfig-global') do
  it { should_not be_file }

end

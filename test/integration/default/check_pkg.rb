describe package('nginx') do
  it { should be_installed }
end

describe nginx do
  its('version') { should eq '1.10.3' }
end

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_running }
  it { should be_enabled }
end

describe file('/var/www/html') do
  it { should exist }
end

describe http('http://localhost') do
  its('status') { should cmp 200 }
  its('body') { should match 'Welcome to nginx!' }
end

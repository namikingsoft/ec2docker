require 'spec_helper'

describe service('docker') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/environment') do
  it { should contain 'COMPOSE_API_VERSION=auto' }
end

require 'spec_helper'

describe package('dokku') do
  it { should be_installed }
end

describe package('herokuish') do
  it { should be_installed }
end

require 'spec_helper'

describe Category do
  it { should have_valid(:name).when('Ruby') }
  it { should_not have_valid(:name).when('', nil) }
end

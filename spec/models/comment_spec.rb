require 'spec_helper'

describe Comment do
  it { should have_valid(:comment).when('Nice post!') }
  it { should_not have_valid(:comment).when('', nil) }
  it { should belong_to :author }
end

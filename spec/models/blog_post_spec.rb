require 'spec_helper'

describe BlogPost do
  let (:blanks) { ['', nil] }

  it { should have_valid(:title).when('A Title') }
  it { should_not have_valid(:title).when(*blanks) }
  it { should have_valid(:body).when('a blog post!') }
  it { should_not have_valid(:body).when(*blanks) }
  it { should belong_to :author }
  it { should have_many(:comments).dependent(:destroy) }
  it { should belong_to :category }
end

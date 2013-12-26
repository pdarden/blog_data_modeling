require 'spec_helper'

describe Author do
  let(:invalid_emails) { ['user@mycom', 'usermy.com', 'user', '.com', 'my.com'] }
  it { should have_valid(:name).when('Jane Doe') }
  it { should_not have_valid(:name).when('', nil) }
  it { should have_valid(:email).when('user@example.com') }
  it { should_not have_valid(:email).when(*invalid_emails) }
  it { should have_many(:comments).dependent(:destroy) }
  it { should have_many(:blog_posts).dependent(:destroy) }
end

class BlogPost < ActiveRecord::Base
  validates_presence_of :title, :body
  belongs_to :author, inverse_of: :blog_posts
end

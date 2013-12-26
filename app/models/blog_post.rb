class BlogPost < ActiveRecord::Base
  validates_presence_of :title, :body
  belongs_to :author, inverse_of: :blog_posts
  has_many :comments, inverse_of: :blog_post, dependent: :destroy
  belongs_to :category, inverse_of: :blog_posts
end

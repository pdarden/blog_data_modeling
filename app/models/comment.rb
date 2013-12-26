class Comment < ActiveRecord::Base
  validates_presence_of :comment
  belongs_to :author, inverse_of: :comments
  belongs_to :blog_post, inverse_of: :comments
end

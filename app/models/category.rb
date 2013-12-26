class Category < ActiveRecord::Base
  validates_presence_of :name
  has_many :blog_posts, inverse_of: :category, dependent: :nullify
end

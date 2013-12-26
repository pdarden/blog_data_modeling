class Author < ActiveRecord::Base
  validates_presence_of :name, :email
  validates_format_of :email, with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/i
  has_many :comments, inverse_of: :author, dependent: :destroy
end

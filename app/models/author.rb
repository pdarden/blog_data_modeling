class Author < ActiveRecord::Base
  validates_presence_of :name, :email
  validates_format_of :email, with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/i
end

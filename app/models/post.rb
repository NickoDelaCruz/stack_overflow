class Post < ActiveRecord::Base
  has_many :comments
  validates :username, :presence => true
  validates :question, :presence => true
end

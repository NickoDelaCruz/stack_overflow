class Post < ActiveRecord::Base
  validates :username, :presence => true
end

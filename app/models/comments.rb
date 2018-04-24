class Comment < ActiveRecord::Base
  validates :username, :presence => true
  validates :comment_body, :presence => true
end

class Comment < ActiveRecord::Base
  belongs_to :post
  validates :username, :presence => true
  validates :comment_body, :presence => true, :length => { :minimum => 20, :maximum => 250}
  # validates :post_id, :presence => true
end

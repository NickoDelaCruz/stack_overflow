class Comment < ActiveRecord::Base
  belongs_to :post
  validates :username, :presence => true
  validates :comment_body, :presence => true, :length => { :minimum => 20, :maximum => 250}
  # validates_length_of :content_body, minimum: 20, maximum: 250, too_short: 'is too short (minimum is 50 characters)', too_long: 'is too long (maximum is 250 characters)'
  validates :post_id, :presence => true
end

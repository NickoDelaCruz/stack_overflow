require 'rails_helper'

describe Comment do
  it { should validate_presence_of :username }
  it { should validate_presence_of :comment_body }
  it { should validate_length_of(:comment_body).is_at_least(20) }
  it { should validate_length_of(:comment_body).is_at_most(250) }
  it { should validate_presence_of :post_id }
end

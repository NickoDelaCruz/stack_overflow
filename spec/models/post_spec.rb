require 'rails_helper'

describe Post do
  it { should validate_presence_of :username }
  it { should validate_presence_of :question }
end

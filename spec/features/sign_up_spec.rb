require 'rails_helper'


describe "it allows user to signup" do
  it "creates an account for user" do
    visit signup_path
    fill_in('user[email]', :with => 'admin')
    fill_in('Password', :with => 'epicodus')
    fill_in('Password confirmation', :with => 'epicodus')
    click_on 'Sign Up'
  end
end





    # user = User.create(:email => 'admin@gmail.com', :)

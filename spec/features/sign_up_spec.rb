require 'rails_helper'


describe "it allows user to login" do
  it "logs user in" do
    visit signup_path
    fill_in('user[email]', :with => 'admin')
    fill_in('Password', :with => 'epicodus')
    fill_in('Password confirmation', :with => 'epicodus')
    click_on 'Sign Up'
  end
end





    # user = User.create(:email => 'admin@gmail.com', :)

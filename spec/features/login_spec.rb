require 'rails_helper'


describe "it allows user to login" do
  it "logs user in" do
    visit signin_path
    fill_in('email', :with => 'admin')
    fill_in('Password', :with => 'epicodus')
    click_button 'Sign in'
  end
end

require 'rails_helper'

describe "it adds a post/question for the user" do
  it "gives error when not signed in" do
    visit posts_path
    click_link 'Ask Question'

    expect(page).to have_content 'No account, no shirt, no access!'
  end

  it "gives error when user is not signed in" do
    visit new_post_path
    click_link 'Ask Question'
  expect(page).to have_content 'No account, no shirt, no access!'

  end
end

# fill_in 'Username', :with => 'Nicko'
# click_on 'Create Post'

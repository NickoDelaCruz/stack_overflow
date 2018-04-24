require 'rails_helper'

describe "add comment" do
  it "adds a comment to a post" do
    post = Post.create(:username => 'Admin', :question => 'Should we party?')
    visit signin_path
    fill_in('email', :with => 'admin@gmail.com')
    fill_in('Password', :with => 'admin')
    click_button 'Sign in'
    visit posts_path

    click_link 'Answer Question'
    visit new_post_comment_path(:post_id)

    click_link 'Answer Question'

    click_button 'Add Comment'



    fill_in 'Username', :with => 'Admin'

    fill_in 'Comment_body', :with => 'Kamehamehaaaadsaiufhdskajfhds;jakfh;dsakjhfk;jsadhfk;jsdahf;kjsdahfiashfsdahfsdiuafhsiuadhfpisuahfsfsadif'
    click_button 'Create Comment'



    expect(page).to have_content 'Admin'

        save_and_open_page

  end
end

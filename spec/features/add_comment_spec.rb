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
    save_and_open_page
    fill_in 'comment_username', with: 'Admin'

    fill_in 'Comment_body', :with => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce lobortis consequat gravida. Maecenas mattis purus sit amet suscipit pellentesque. Mauris vulputate condimentum pellentesque. Sed et consequat arcu. Vivamus nec porttitor turpis. Nullam hendrerit nunc felis. Cras eu leo eget eros dignissim posuere. Quisque dictum faucibus sapien vel sollicitudin.'
    click_button 'Create Comment'



    expect(page).to have_content 'Comment added'



  end
end

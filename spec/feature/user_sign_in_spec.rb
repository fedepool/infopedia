require 'spec_helper'
# As a user, I want to be able to sign in and out of the Blocipedia.
feature "User signs in" do

  scenario "with a valid email and password" do
    user = FactoryGirl.create :user
    visit new_user_session_path
    
    
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    check 'Remember me'
    click_on 'Sign in'    
    
    save_and_open_page
    expect(page).to have_content 'Signed in successfully'
  end
end
require 'test_helper'

feature 'Auth' do
  scenario 'User can sign up' do
    sign_up
    page.must_have_content("Logged in as")
  end

  scenario 'User can sign in' do
    sign_in
    page.must_have_content("Signed in successfully")
    page.must_have_content "Logout"
  end

  scenario 'Sign out' do
    sign_in
    click_on 'Logout'
    page.must_have_content("You need to sign in or sign up before continuing")
  end
end

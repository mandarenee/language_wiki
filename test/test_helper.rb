ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/rails/capybara'
require 'minitest/pride'
require 'pry'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def sign_in
    visit new_user_session_path
    fill_in "Email", with: 'amanda@none.com'
    fill_in "Password", with: 'password'
    click_on "Log in"
  end

  def sign_up
    visit root_path
    click_on "Sign Up"
    fill_in "Name", with: "Manda"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
  end

  def create_translation
    sign_up
    click_on "New Translation"
    fill_in "Core language", with: "I like to learn"
    fill_in "Target language", with: "Eu gosto de aprender"
    click_on "Create Translation"
  end

  def sign_in_other
    visit root_path
    click_on "Sign Up"
    fill_in "Name", with: "Walker"
    fill_in "Email", with: "test2@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
  end
end

require 'test_helper'

feature 'Users' do
  scenario 'User lists all contributions' do
    create_translation
    visit root_path
    click_on "New Translation"
    fill_in "Core language", with: "I like dogs"
    fill_in "Target language", with: "Eu gosto de cachorros"
    click_on "Create Translation"
    click_on "Manda"

    page.must_have_content "I like to learn"
    page.must_have_content "I like dogs"
    page.must_have_content "User: Manda"
  end
end

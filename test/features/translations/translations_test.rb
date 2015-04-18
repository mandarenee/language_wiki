require 'test_helper'

feature 'Translations' do
  scenario 'User can create a new translation' do
    create_translation

    page.must_have_content "Translation was successfully created."
    page.must_have_content "Contributors:"
    page.must_have_content "Manda"
  end

  scenario 'User can edit an existing translation' do
    create_translation
    click_on "Logout"
    sign_in_other
    click_on "Edit"
    fill_in "Core language", with: "I like to learn languages"
    fill_in "Target language", with: "Eu gosto de aprender idiomas"
    click_on "Update Translation"

    page.must_have_content "idiomas"
    page.must_have_content "Walker"
    page.must_have_content "Manda"
  end

  scenario 'User can delete a translation' do
    create_translation
    visit root_path
    click_on "Destroy"

    page.wont_have_content("Eu gosto")
  end
end

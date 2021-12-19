require 'rails_helper'

RSpec.feature 'User signs up', type: :system do
  scenario 'with valid data' do
    visit new_user_registration_path

    fill_in 'user[email]', with: 'username@example.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    click_button "S'inscrire"

    expect(page).to have_text 'Bienvenue ! Vous vous êtes bien enregistré(e).'
  end

  scenario 'with invalid data' do
    visit new_user_registration_path

    click_button "S'inscrire"

    expect(page).to have_text "E-mail doit être rempli(e)"
    expect(page).to have_text "Password doit être rempli(e)"
    expect(page).to have_no_link 'Sign Out'
  end
end

require 'rails_helper'

RSpec.feature 'User signs in', type: :system do
  scenario 'with valid credentials' do
    user = create :user

    visit new_user_session_path

    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'Connecter'

    expect(page).to have_text 'NOUVELLE PUBLICATION'
  end

  scenario 'with invalid credentials' do
    user = build :user

    visit new_user_session_path

    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'Connecter'

    expect(page).to have_text 'E-mail ou mot de passe incorrect.'
  end
end

require 'rails_helper'

RSpec.feature 'User signs out' do
  scenario 'user signed in' do
    user = create :user

    sign_in user

    visit root_path

    click_on 'Deconnexion'

    expect(page).to have_text 'Déconnecté(e).'
    expect(page).to have_no_link 'Sign Out'
  end
end

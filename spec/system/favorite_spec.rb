require 'rails_helper'
RSpec.describe 'Fonction de gestion des favorites', type: :system do
    before do
        user = create :user

        visit new_user_session_path

        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'Connecter'
    end

end
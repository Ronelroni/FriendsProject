require 'rails_helper'
RSpec.describe 'Fonction de gestion des commentaire', type: :system do
    before do
        user = create :user

        visit new_user_session_path

        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'Connecter'
    end

    context "Test Systèm Commentaire" do
        it "Commenter une publication" do
            click_on "Nouvelle publications"
            fill_in "publication[content]", with: "Le bonheur est ici"
            click_on "publier"
            fill_in "comment[content]", with: "C'est la joie"
            click_on "commenter"

            expect(page).to have_content "C'est la joie"
        end


    end
end
require 'rails_helper'
RSpec.describe 'Fonction de gestion des publication', type: :system do
    before do
        user = create :user

        visit new_user_session_path

        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'Connecter'
    end

    context "Test Systèm Publication" do
        it "Créer une publication" do
            click_on "Nouvelle publications"
            fill_in "publication[content]", with: "Le bonheur est ici"
            click_on "publier"

            expect(page).to have_content "Le bonheur est ici"
        end

        it "Modifier une publication" do
            click_on "Nouvelle publications"
            fill_in "publication[content]", with: "Le bonheur est ici"
            click_on "publier"
            click_on "Modifier"
            fill_in "publication[content]", with: "Le bonheur est ici avec nous"
            click_on "publier"

            expect(page).to have_content "Le bonheur est ici avec nous"
        end

        it "Supprimer une publication" do
            click_on "Nouvelle publications"
            fill_in "publication[content]", with: "Le bonheur est ici"
            click_on "publier"
            click_on "Supprimer"

            expect(page).to have_content "Publication supprimé"
        end

    end
end
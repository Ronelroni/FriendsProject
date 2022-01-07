require 'rails_helper'
RSpec.describe 'User registration / login / logout function', type: :system do
    describe "Admin crud to performed" do
        before do
            user = FactoryBot.create(:user, email: "admin@example.com", password: "password", is_admin: true)
            user_id = user.id
    
            visit new_user_session_path
    
            fill_in 'user[email]', with: "admin@example.com"
            fill_in 'user[password]', with: "password"
            click_button 'Connecter'
        end
     
        it "display all models" do
            visit rails_admin_path
            expect(page).to have_content 'Panneau de contrôle'
        end
      
    end
    
end
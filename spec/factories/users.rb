FactoryBot.define do
    factory :user do
      name {"user"}
      email {'user1@gmail.com'}
      password {"password"}
      is_admin {false}
    end
    
  end
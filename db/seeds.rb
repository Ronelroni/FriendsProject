# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |n|
    name = "name#{n}"
    email = "email#{n}add@xel.com"
    puts email
    password = "password"
    user = User.create!(name: name, email: email, password: password)
    5.times do |n|
        image = "image#{n}"
        content = "word#{n}"
        publication = Publication.create!(user_id: user.id, image: image, content: content)
        5.times do |n|
            content = "word#{n}"
            Comment.create!(user_id: user.id, publication_id: publication.id, content: content)
            
        end
        
    end
    
end
5.times do |n|
    Group.create!(name:"name#{n}")
end  


FactoryBot.define do
  factory :grouppost do
    user { nil }
    group { nil }
    content { "MyText" }
    image { "MyString" }
  end
end

FactoryBot.define do
  factory :user do
    username { Faker::Creature::Dog.name }
    password { Faker::Color.color_name }
  end
end

Restaurant.destroy_all

10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, rating: rand(1..5), chef_name: Faker::FunnyName.two_word_name)
end

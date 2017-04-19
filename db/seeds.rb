# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
Restaurant.destroy_all # this syntax deletes all entries everytime you seed anew.
5.times do
  # i need name address phone number category and reviews
  # rates = (1..5).sample
  # review = Review.create([{ content: Faker::StarWars.wookie_sentence}, { rating: rates}])
  Restaurant.create(name: Faker::StarWars.character,
                    address: Faker::StarWars.planet,
                    phone_number: Faker::PhoneNumber.cell_phone,
                    category: CATEGORIES.sample)
end

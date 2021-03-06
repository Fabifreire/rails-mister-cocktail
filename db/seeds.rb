# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying the database..."
Ingredient.destroy_all

puts "Creating the list of ingredients from the JSON url"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = RestClient.get(url)
json = JSON.parse(response, symbolize_names: true)

ingredients = json[:drinks] # array of hashes
ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient[:strIngredient1])
end

puts "Done :)"
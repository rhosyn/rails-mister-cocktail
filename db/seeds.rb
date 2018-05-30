require 'open-uri'
require 'json'

puts 'Creating ingredients...'
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
cocktails = JSON.parse(open(url).read)

cocktails['drinks'].each do |i|
  ing = Ingredient.new
  ing.name = (i['strIngredient1'])
  ing.save
end

puts "Finished!"

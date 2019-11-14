require "json"
require "rest-client"

response = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
repos = JSON.parse(response.body)
puts repos

repos['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end

require_relative '../config/environment.rb'
require 'pry'

u2 = User.new("Daniel")
u3 = User.new("Frida")

a1 = Allergen.new("Gluten", u2)
a2 = Allergen.new("Bad", u2)

ing1 = Ingredient.new("salt")
ing2 = Ingredient.new("Pepper")

r1 = Recipe.new("cereal")
r2 = Recipe.new("bread")
r3 = Recipe.new("ramen")
r4 = Recipe.new("pasta")


rin1 = RecipeIngredient.new(ing1, r1)
rin2 = RecipeIngredient.new(ing2, r2)

rc1 = RecipeCard.new(r1, u2, 10, "September, 12th")
rc2 = RecipeCard.new(r2, u2, 7, "September, 15th")
rc3 = RecipeCard.new(r3, u3, 8, "September, 16th")
rc4 = RecipeCard.new(r4, u3, 9, "September, 17th")


binding.pry

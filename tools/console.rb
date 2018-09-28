require_relative '../config/environment.rb'
require 'pry'

u1 = User.new("Bob")
u2 = User.new("Daniel")
u3 = User.new("Frida")
u4 = User.new("Sue")

ing1 = Ingredient.new("Salt")
ing2 = Ingredient.new("Pepper")
ing3 = Ingredient.new("Chicken")
ing4 = Ingredient.new("Rice")

a1 = Allergen.new(ing1, u1)
a4 = Allergen.new(ing2, u2)
a2 = Allergen.new(ing2, u3)
a3 = Allergen.new(ing3, u3)

r1 = Recipe.new("cereal")
r2 = Recipe.new("bread")
r3 = Recipe.new("ramen")
r4 = Recipe.new("pasta")


rin1 = RecipeIngredient.new(ing1, r1)
rin2 = RecipeIngredient.new(ing2, r2)

rc1 = RecipeCard.new(r1, u1, 10, "September, 12th")
rc2 = RecipeCard.new(r2, u2, 7, "September, 15th")
rc3 = RecipeCard.new(r1, u3, 8, "September, 16th")
rc5 = RecipeCard.new(r2, u3, 9, "September, 17th")
rc6 = RecipeCard.new(r3, u3, 10, "September, 18th")
rc7 = RecipeCard.new(r4, u3, 1, "September, 19th")

binding.pry

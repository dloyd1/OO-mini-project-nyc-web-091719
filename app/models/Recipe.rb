require 'pry'
class Recipe
attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_popular
    arr = RecipeCard.all.map {|x| x.recipe.name}
    arr2 = arr.max_by {|x1| arr.count(x1)}
  end

  def users
   arr1 = RecipeCard.all.select {|rc| rc.recipe == self}
   arr1.map { |rc| rc.user}
  end

  def ingredients
    arr2 = RecipeIngredient.all.select {|ing| ing.recipe == self }
    arr2.map { |ing| ing.ingredient}
  end

  def allergens
    arr3 = Allergen.all.map {|a| a.ingredient}
    arr4 = arr3.select {|x| self.ingredients.include?(x)}.uniq
  end

  def add_ingredients(ingredients)

  end

end

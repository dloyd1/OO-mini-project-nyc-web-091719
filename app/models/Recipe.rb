require 'pry'
class Recipe
attr_accessor :name, :ingredients, :allergens

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_popular
    all.max_by {|recipes| all.count(recipes)}
  end

  def users
   new = RecipeCard.all.select {|rc| rc.recipe == self }
   new.map { |rc| rc.user}

  end

  def ingredients
  new = RecipeIngredient.all.select {|ing| ing.recipe == self }
  new.map { |ing| ing.ingredient}
  end

  def allergens
new = Allergen.all.select {|a| a.ingredient == self.ingredients}
new.map {|a| a.ingredient}
  end

  def add_ingredients(ingredients)
    self.ingredients
  end

end

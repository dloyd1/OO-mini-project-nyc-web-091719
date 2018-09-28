class User
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    ar1 = RecipeCard.all.select {|x| x.user == self}
    ar2 = ar1.map {|x1| x1.recipe.name}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    ar3 = Allergen.all.select {|x| x.user == self}
    ar4 = ar3.map {|x1| x1.ingredient.name}
  end

  def top_three_recipes
    ar5 = RecipeCard.all.select {|x| x.user == self}
    ar6 = ar5.max_by(3){|x1| x1.rating}
    # ar7 = ar6.map{|x| x[0], x[3]}
    # ar7 = ar6.map {|x2| x2.recipe.name}
    # ar8 = ar7.pop.unshift
  end

  def most_recent_recipe
    ar8 = RecipeCard.all.select {|x| x.user == self}
    ar9 = ar8.max_by(1){|x1| x1.date}
    puts "The most recent recipe for #{self.name} is #{ar9[0].recipe.name}. It was created on #{ar9[0].date}."
  end

end

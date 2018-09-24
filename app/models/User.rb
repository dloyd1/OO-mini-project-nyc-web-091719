class User
  attr_accessor :name, :allergen

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  # def declare_allergen(ingredient)
  #   Allergen.new(ingredient, self)
  # end

  # def allergens
  #   declare_allergen(ingredient)
  # end

  # def top_three_recipes
  #   RecipeCard.all.select {|rating| }
  # end
  
  # def most_recent_recipe
  #
  # end

end

class RecipeCard
  attr_accessor :recipe, :user, :rating, :date
  @@all = []

  def self.all
    @@all
  end

  def initialize(recipe, user, rating, date)
    @recipe = recipe
    @user = user
    @rating = rating
    @date = date
    @@all << self
  end

end

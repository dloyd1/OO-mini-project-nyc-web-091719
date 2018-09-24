class Allergen
  attr_accessor :ingredient, :user

@@all = []

def self.all
@@all
end

def initialize(ingredient, user)
  @ingredient = ingredient
  @user = user 
  @@all << self
end

end

class Ingredient
attr_accessor :name

@@all = []

def self.all
@@all
end

def initialize(name)
  @name = name
  @@all << self
end

def self.most_common_allergen
  arr1 = Allergen.all.map {|x| x.ingredient}
  arr2 = arr1.max_by {|x| arr1.count(x)}.name
end

end

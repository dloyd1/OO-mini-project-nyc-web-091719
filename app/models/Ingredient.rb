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
  all.max_by {|ingredient| all.count(ingredient)}
end

end

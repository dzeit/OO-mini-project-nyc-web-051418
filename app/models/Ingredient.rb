require 'pry'

class Ingredient

attr_accessor :name

@@all = []

def initialize(name)
  @name = name

  @@all << self
end

def self.all
  @@all
end

def new_rec_ingredient(recipe)
  RecipeIngredient.new(recipe, self)
end


end

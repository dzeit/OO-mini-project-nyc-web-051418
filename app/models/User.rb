require 'pry'

class User

attr_accessor
@@all = []

def initialize(name)
@name = name
@@all << self
# binding.pry
end

def self.all
@@all
end

def new_recipe_card(recipe)
  RecipeCard.new(self, recipe)
end

def recipe_card
  RecipeCard.all.select { |recipe_card| recipe_card.user == self }
end

def recipes
  recipe_card.map { |recipe_card| recipe_card.recipe }
end

end

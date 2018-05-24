require 'pry'

class Recipe

attr_accessor :user
@@all = []

def initialize(user, rec_name)

  @user = user
  @rec_name = rec_name
  @@all << self
end

def self.all
  @@all
end

def new_rec_ingredient(ingredients)
  RecipeIngredient.new(self, ingredients)
end

def recipe_ingredient
  RecipeIngredient.all.select { |recipe_ingredient| recipe_ingredient.recipe == self}
end

def ingredients
  recipe_ingredient.map { |recipe_ingredient| recipe_ingredient.ingredients}
end
# def self.most_popular
#   # RecipeCard.all.select { |recipe_card| recipe_card.}
# end

def new_recipe_card(user)
  RecipeCard.new(user, self)
end

def recipe_card
  RecipeCard.all.select { |recipe_card| recipe_card.recipe == self }
end

def users
  recipe_card.map { |recipe_card| recipe_card.user }
end

Recipe.new("david")
Recipe.new("david")
Recipe.new("jordan")

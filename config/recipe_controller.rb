class Recipes.controller < ApplicationController
  def one_recipe_action
    @recipe = Recipe.first
    render r
  end
end

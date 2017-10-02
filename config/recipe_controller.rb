class RecipesController < ApplicationController
 

  def index
if session[:count] == nil
    session[:count] = 0
  end
  session[:count] += 1
  @counter = session [:count]
    @recipes = Recipe.all
  end


  def new

  end

  def create
    recipe = Recipe.new(
                        title:params[:title]
                        chef: params[:chef]
                        ingredients: params[:ingredients]
                        directions: params[:directions]
                        )
    
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end
  def update
    recipe = Recipe.find(params[:id])

    recipe.assign_attributes(
                        title:params[:title]
                        chef: params[:chef]
                        ingredients: params[:ingredients]
                        directions: params[:directions]
                        )

    recipe.save
  end

end
class Recipe < ApplicationRecord
belongs_to :user
has_many :category_recipes
has_many :categories, through: :category_recipes

  def ingredients_list
    ingredients.split(",")

  end

  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    
    result_time = ""
    result_time += "#{hours} #{'Hours'.pluralize(hours)}" if hours > 0
    result_time += "," if hours > 0 && minutes > 0
    result_time += "#{minutes} #{'Minutes'.pluralize(minutes)}" if minutes > 0
    

    end
    
  end
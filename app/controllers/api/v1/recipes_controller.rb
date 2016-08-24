class Api::V1::RecipesController < ApplicationController

  def index
    render json: Recipe.all
  end

  def show
    render json: Recipe.find(params[:id])
  end

  def create
    recipe = Recipe.create(recipe_params)
    render json: recipe
  end

  def update

  end

  def destroy

  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end

end
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
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    recipe.save
    render json: recipe
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render nothing: true
  end

  private
  def recipe_params
    # params.require(:data).permit(:name, :description, :ingredients)
    ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:name, :description, :ingredients])
  end

end
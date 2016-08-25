class Api::V1::IngredientsController < ApplicationController

  def index
    render json: Ingredient.all
  end

  def show
    render json: Ingredient.find(params[:id])
  end

  def create
    ingredient = Ingredient.create(ingredient_params)
    render json: ingredient
  end

  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update(ingredient_params)
    ingredient.save
    render json: ingredient
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
    render nothing: true
  end

  private

  def ingredient_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:name, :recipes])
  end
end
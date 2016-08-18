class Api::V1::IngredientsController < ApplicationController

  def index
    render json: Ingredient.all
  end

  def show
    render json: Ingredient.find(params[:id])
  end

  def create

  end

  def update

  end

  def destroy

  end
end
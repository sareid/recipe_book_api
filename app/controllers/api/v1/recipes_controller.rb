class Api::V1::RecipesController < ApplicationController

  def index
    render json: Recipe.all
  end

  def show
    render json: Recipe.find(params[:id])
  end

  def create

  end

  def update

  end

  def destroy

  end

end
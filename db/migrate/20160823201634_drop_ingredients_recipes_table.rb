class DropIngredientsRecipesTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :ingredients_recipes
  end
end

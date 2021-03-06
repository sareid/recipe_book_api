class AddIngredientRecipeTable < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredient_recipes do |t|
      t.references :recipe, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true

      t.timestamps
    end
  end
end

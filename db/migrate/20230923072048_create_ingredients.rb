class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.integer :quantity
      t.references :food, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
      t.timestamps
    end
  end
end

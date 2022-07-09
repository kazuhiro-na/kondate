class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :ingredient1
      t.string :ingredient2
      t.string :ingredient3
      t.string :ingredient4
      t.string :ingredient5
      t.string :ingredient6
      t.string :ingredient7
      t.references :cooking, null: false, foreign_key: true
      t.timestamps
    end
  end
end

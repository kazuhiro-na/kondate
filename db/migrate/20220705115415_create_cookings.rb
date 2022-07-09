class CreateCookings < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings do |t|
      t.string    :name, null: false
      t.integer   :category_id
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

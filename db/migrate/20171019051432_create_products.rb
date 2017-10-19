class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.text :image
      t.string :name
      t.integer :rating
      t.references :user, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end

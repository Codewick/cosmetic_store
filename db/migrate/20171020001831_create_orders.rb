class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.float :total_amount

      t.timestamps
    end
  end
end

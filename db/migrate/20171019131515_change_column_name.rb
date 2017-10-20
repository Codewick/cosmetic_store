class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :Products, :image, :image_data
  end
end

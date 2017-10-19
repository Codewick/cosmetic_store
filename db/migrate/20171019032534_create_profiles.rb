class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :avatar_data
      t.string :username
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

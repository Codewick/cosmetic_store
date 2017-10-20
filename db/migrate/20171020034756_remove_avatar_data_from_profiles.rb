class RemoveAvatarDataFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :avatar_data, :text
  end
end

json.extract! profile, :id, :avatar_data, :firstname, :lastname, :address, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)

json.extract! flat, :id, :title, :address, :description, :stars, :user_id, :latitude, :longitude, :created_at, :updated_at
json.url flat_url(flat, format: :json)
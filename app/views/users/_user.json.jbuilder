json.extract! user, :id, :user_id, :name, :email, :pass, :created_at, :updated_at
json.url user_url(user, format: :json)
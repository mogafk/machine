json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :body, :status, :latitude, :longitude, :address
  json.url post_url(post, format: :json)
end

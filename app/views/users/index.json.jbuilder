json.array!(@users) do |user|
  json.extract! user, :id, :name, :rating
  json.url user_url(user, format: :json)
end

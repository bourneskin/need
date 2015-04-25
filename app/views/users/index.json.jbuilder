json.array!(@users) do |user|
  json.extract! user, :id, :name, :firstname, :email, :pwd, :age, :dob
  json.url user_url(user, format: :json)
end

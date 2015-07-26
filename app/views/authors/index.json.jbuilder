json.array!(@authors) do |author|
  json.extract! author, :id, :name, :email, :password, :password_confirmation
  json.url author_url(author, format: :json)
end

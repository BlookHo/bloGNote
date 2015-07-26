RailsAdmin.config do |config|
  config.authenticate_with do
    # Use sorcery's before filter to auth users
    require_login
  end
end

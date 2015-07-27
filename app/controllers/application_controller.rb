class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # # Overwrite the method sorcery calls when it
  # # detects a non-authenticated request.
  # def not_authenticated
  #   # Make sure that we reference the route from the main app.
  #   redirect_to main_app.login_path
  # end


end

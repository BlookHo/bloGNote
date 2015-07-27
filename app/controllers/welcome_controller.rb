class WelcomeController < ApplicationController

  layout 'application'

  # Welcome page
  def index
    Author.create_admin unless Author.admin_exists? # Create ADMIN Author
  end



end

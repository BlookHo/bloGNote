class WelcomeController < ApplicationController

  layout 'application'

  # Landing page
  def index
    create_admin unless admin_exists?
  end

  def admin_exists?
    logger.info "In admin_exists?: exists? = #{Author.where(email: 'admin@ad.ad').exists?}"
    Author.where(email: 'admin@ad.ad').exists?
  end


  def create_admin
    Author.create(name: 'admin', email: 'admin@ad.ad', password: 'admin', password_confirmation: 'admin')
    logger.info "In admin_exists?: exists? = #{Author.where(email: 'admin@ad.ad').exists?}"
  end



end

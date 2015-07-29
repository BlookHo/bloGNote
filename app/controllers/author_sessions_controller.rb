class AuthorSessionsController < ApplicationController

  def new
  end

  def create
    if login(params[:email], params[:password])
      if params[:email] == 'admin@admin.ad' && params[:password] == 'admin'
        logger.info "In AuthorSessions.create:  params[:email] = #{params[:email]},  params[:password] = #{params[:password]}"
        redirect_to rails_admin.dashboard_path
      else
        redirect_back_or_to(articles_path, notice: 'Logged in successfully.')
      end
    else
      @notice = "Login failed. Repeat"
      render action: :new
    end
  end

  def destroy
    logout
    # redirect_to(:authors, notice: 'Logged out!')
    redirect_to(root_path, notice: 'Logged out!')
  end
end

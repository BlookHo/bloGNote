class WelcomeController < ApplicationController

  layout 'application'

  before_filter :authenticate, :except => [ :index ]

  # Landing page
  def index
    # session[:user_id] = nil
    # session[:current_step] = nil
    # session[:current_author] = nil
   # redirect_to 'articles#index'# if current_user
  end


  def register


  end


  def sign_in


  end


  def sign_out


  end


  def subscribe

  end


  def see_articles


  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "secret"
    end
  end





end

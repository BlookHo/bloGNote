class AuthorsController < ApplicationController

  before_filter :zero_authors_or_authenticated, only: [:new, :create]
  before_filter :require_login, except: [:new, :create] ###

  def zero_authors_or_authenticated
    # unless Author.count == 0 || current_user
    if current_user
      redirect_to root_path
    end
  end

  before_action :set_author, only: [:show]


  # GET /authors/1
  # GET /authors/1.json
  def show
  end

  # GET /authors/new
  def new
    @author = Author.new
  end

  # POST /authors
  # POST /authors.json
  def create
    @author = Author.new(author_params)

    respond_to do |format|
      if @author.save
        auto_login(@author)

        format.html { redirect_to articles_path, notice: 'New Author created. Welcome to bloGNote' }
        format.json { render :show, status: :created, location: @author }
      else
        format.html { render :new }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def author_params
      params.require(:author).permit(:name, :email, :password, :password_confirmation)
    end
end

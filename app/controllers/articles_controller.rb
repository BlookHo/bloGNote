class ArticlesController < ApplicationController
  # before_filter :authenticate, :except => [ :index, :show ]

  before_action :set_article, only: [:show, :edit, :update, :destroy]
  # set_article is a method which will call always before show, update, edit and destroy.




  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  @current_user = current_user


  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @comment = Comment.new
    @comment.article_id = @article.id
    @current_user_name = current_user.name
    @author_name = Author.find(@article.author_id).name
    # logger.info "Show:  @author_name = #{@author_name.inspect}"
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    subscriber = article_params[:author_id]
    logger.info "In Article.create 1:  subscriber = #{subscriber},  @article = #{@article}"
    # send_emails   # Send noti emails


    respond_to do |format|
      if @article.save

        logger.info "In Article.create 2:  subscriber = #{subscriber},  @article.id = #{@article.id}"
        send_emails(@article.id)   # Send noti emails

        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end


  # @note: Send emails to all subscribers
  # To put in Sideqic
  def send_emails(article_id)

    Subscriber.subscribers_emails.each do |one_email|
      SubscriberMailer.new_article_email(one_email, article_id).deliver!#_now
    end

  end



  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update

    # @article = Article.find(params[:id])
    # @article.update(article_params)
    #
    # flash.notice = "Article '#{@article.title}' Updated!"

    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:author_id, :title, :body)
    end


  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "secret"
    end




  end





end

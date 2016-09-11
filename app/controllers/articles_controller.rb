class ArticlesController < ApplicationController
  before_action :logged_in?, :except => [ :index, :show ]

  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    # @articles = Article.all
    if params[:tag]
      # logger.info " #{Article.tagged_with(params[:tag]).inspect} "
      @articles = Article.tagged_with(params[:tag] ).page(params[:page]).per(5)
    else
      @articles = Article.all.page(params[:page]).per(5)
    end
    @current_user = current_user
  end

  def tag_cloud
    @tags = Article.tag_counts_on(:tags)
  end
  

  # GET /articles/1
  # GET /articles/1.json
  def show
    @comment = Comment.new
    @comment.article_id = @article.id
    @current_user_name = current_user.name unless current_user == nil
    @author_name = Author.find(@article.author_id).name
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
    @article.author_id = current_user.id if current_user

    respond_to do |format|
      if @article.save
        send_emails(@article.id)   # Send noti emails

        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end


  # @note: Send emails to all subscribers - via Sidekiq
  def send_emails(article_id)
    Subscriber.subscribers_emails.each do |one_email|
      logger.info "In ArticlesController#send_emails: article_id = #{article_id} "
      logger.info "In ArticlesController#send_emails: one_email = #{one_email} "
      SubscriberMailer.delay.new_article_email(one_email, article_id) # with Sidekiq
      SubscriberMailer.new_article_email(one_email, article_id).deliver!#_now - without Sidekiq
    end
  end


  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
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
      params.require(:article).permit(:author_id, :title, :body, :tag_list)
    end

end

class SubscribersController < ApplicationController
  before_action :set_subscriber, only: [:show,  :destroy] #:edit, :update, index

  # GET /subscribers
  # GET /subscribers.json
  def index
    @subscribers = Subscriber.all
  end

  # GET /subscribers/1
  # GET /subscribers/1.json
  def show
  end

  # GET /subscribers/new
  def new
    @subscriber = Subscriber.new
  end

  # GET /subscribers/1/edit
  def edit
  end

  # @note: Create Subscriber from Author
  def create_author_subscriber
      notice_message = 'Congratulations Author! You become a Subscriber of our BloGNote successfully.'
      # raise params.inspect
      @subscriber = Subscriber.new({name: current_user.name, email: current_user.email})
      logger.info "In create_author_subscriber:  @subscriber = #{@subscriber.inspect} "
      respond_to do |format|
        if @subscriber.save
          logger.info "In subscribers create 2:  @subscriber.id = #{@subscriber.id.inspect} "
          format.html { redirect_to articles_path, notice: notice_message }
        else
          format.html { render :new }
          format.json { render json: @subscriber.errors, status: :unprocessable_entity }
        end
      end

  end

  # @note: Create Subscriber from Visitor
  # POST /subscribers
  # POST /subscribers.json
  def create
    notice_message = 'Congratulations visitor! You become a Subscriber of our BloGNote successfully.'
    @subscriber = Subscriber.new(subscriber_params)

    respond_to do |format|
      if @subscriber.save
        logger.info "In subscribers create:  @subscriber.id = #{@subscriber.id.inspect} "
        format.html { redirect_to articles_path, notice: notice_message }
      else
        format.html { render :new }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscribers/1
  # PATCH/PUT /subscribers/1.json
  def update
    respond_to do |format|
      if @subscriber.update(subscriber_params)
        format.html { redirect_to @subscriber, notice: 'Subscriber was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscriber }
      else
        format.html { render :edit }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscribers/1
  # DELETE /subscribers/1.json
  def destroy
    @subscriber.destroy
    respond_to do |format|
      format.html { redirect_to welcome_path, notice: 'You successfully unsubscribed.' }
      format.json { head :no_content }
    end
  end


  # # @note: unsubscribe
  # def self.unsubscribe
  #
  #   subscriber = params[:subscriber]
  #   subscriber.destroy
  #
  # end
  #

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriber
      @subscriber = Subscriber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscriber_params
      logged_in? ? params.permit(:name, :email) : params.require(:subscriber).permit(:name, :email)
    end



end

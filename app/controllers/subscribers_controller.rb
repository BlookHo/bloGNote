class SubscribersController < ApplicationController
  before_action :set_subscriber, only: [:show]

  # GET /subscribers/1
  # GET /subscribers/1.json
  def show
  end

  # GET /subscribers/new
  def new
    @subscriber = Subscriber.new
  end

  # @note: Create Subscriber from Author
  def create_author_subscriber
      notice_message = 'Congratulations Author! You become a Subscriber of our BloGNote successfully.'
      if !Subscriber.subscriber?(current_user.email)
        # raise params.inspect
        @subscriber = Subscriber.new({name: current_user.name, email: current_user.email})
        differ_render(@subscriber, notice_message)
      else
        redirect_to articles_path, notice: 'You allready subscribered'
      end
  end

  # @note: select rendering
  def differ_render(subscriber, message)
    respond_to do |format|
      if subscriber.save
        logger.info "In subscribers create 2:  @subscriber.id = #{subscriber.id.inspect} "
        format.html { redirect_to articles_path, notice: message }
      else
        format.html { render :new }
        format.json { render json: subscriber.errors, status: :unprocessable_entity }
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

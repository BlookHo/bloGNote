class SubscriberMailer < ActionMailer::Base

  default from: BLOG_EMAIL

  # self.async = true

  def new_article_email(one_email, article_id) #, password = '1111'
    # @password = password
    subscriber = Subscriber.where(email: one_email)[0]
    @subscriber_name = subscriber.name
    logger.info "In new_article_email:  one_email = #{one_email} ,  @subscriber_name = #{@subscriber_name} " #
    @current_time = Time.now

    @link_to_new_article = "http://localhost:3000/articles/" + "#{article_id}"
    @link_to_unsubscribe = "http://localhost:3000/subscribers/" + "#{subscriber.id}"
    logger.info "In new_article_email:  @link_to_new_article = #{@link_to_new_article.inspect},
                 @link_to_unsubscribe = #{@link_to_unsubscribe.inspect}"

    mail(to: one_email, subject: "Message from BloGNote: New article posted!" )
  end


  # def unsubscribe_mail(user,  password)
  #   @name = user.name
  #   @email = user.email
  #   @password = password
  #   mail(to: @email, subject: 'unsubscribe_mail')
  # end

end

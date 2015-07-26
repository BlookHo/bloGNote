class SubscriberMailer < ActionMailer::Base

  default from: BLOG_EMAIL


  def new_article_email(subscriber, password = '1111')
    # @name = user.name

    # @email = Subscriber.find(subscriber_id).email
    @email = 'zoneiva@gmail.com'
    @password = password
    logger.info "In new_article_email:  @email = #{@email}, subscriber = #{subscriber} " #

    mail(to: @email, subject: 'Hi! BloGNote informs You! New article created! See:  Unsubscribe: ')
  end


  def unsubscribe_mail(user,  password)
    @name = user.name
    @email = user.email
    @password = password
    mail(to: @email, subject: 'Мы все - родня. Восстановление пароля.')
  end

end

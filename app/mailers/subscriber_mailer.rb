class SubscriberMailer < ActionMailer::Base

  default from: BLOG_EMAIL


  def new_article_email(one_email, article_id, password = '1111')
    @password = password
    @subscriber_name = Subscriber.where(email: one_email)[0].name
    logger.info "In new_article_email:  one_email = #{one_email} ,  @subscriber_name = #{@subscriber_name} " #
    @current_time = Time.now

    @link_to_new_article = "http://localhost:3000/articles/" + "#{article_id}"
    @link_to_unsubscribe = "@link_to_unsubscribe"
    logger.info "In new_article_email:  @link_to_new_article = #{@link_to_new_article.inspect}"

    mail(to: one_email, subject: "Message from BloGNote: New article posted!" )
  end


  def unsubscribe_mail(user,  password)
    @name = user.name
    @email = user.email
    @password = password
    mail(to: @email, subject: 'Мы все - родня. Восстановление пароля.')
  end

end

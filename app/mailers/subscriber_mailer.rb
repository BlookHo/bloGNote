class SubscriberMailer < ActionMailer::Base

  default from: BLOG_EMAIL


  def new_article_email(one_email, article_id) #, password = '1111'
    # @password = password
    subscriber = Subscriber.where(email: one_email)[0]
    @subscriber_name = subscriber.name
    @current_time = Time.now

    @link_to_new_article = LOCALHOST_ARTICLES_PATH + "#{article_id}"
    @link_to_unsubscribe = LOCALHOST_UNSUBSCRIBE_PATH + "#{subscriber.id}"
    puts "In new_article_email:  @link_to_new_article = #{@link_to_new_article.inspect},
                  one_email = #{one_email} ,  @subscriber_name = #{@subscriber_name},
                 @link_to_unsubscribe = #{@link_to_unsubscribe.inspect}"

    mail(to: one_email, subject: "Message from BloGNote: New article posted!" )
  end


end

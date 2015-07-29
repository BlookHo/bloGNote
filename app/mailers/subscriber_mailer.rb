class SubscriberMailer < ActionMailer::Base

  default from: BLOG_EMAIL

  def new_article_email(one_email, article_id)
    subscriber = Subscriber.where(email: one_email)[0]
    @subscriber_name = subscriber.name
    @current_time = Time.now
    @link_to_new_article = LOCALHOST_ARTICLES_PATH + "#{article_id}"
    @link_to_unsubscribe = LOCALHOST_UNSUBSCRIBE_PATH + "#{subscriber.id}"
    mail(to: one_email, subject: "Message from BloGNote: New article posted!" )
  end


end

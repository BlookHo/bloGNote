# SubscriberMailer configure
BLOG_EMAIL = Rails.application.secrets.emails[:dev_email_name]
# puts " In mail.config: BLOG_EMAIL = #{BLOG_EMAIL}"
LOCALHOST_ARTICLES_PATH = "http://localhost:3000/articles/"
LOCALHOST_UNSUBSCRIBE_PATH = "http://localhost:3000/subscribers/"



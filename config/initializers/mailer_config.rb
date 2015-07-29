# SubscriberMailer configure
BLOG_EMAIL = Rails.application.secrets.emails[:dev_email_name]
# puts " In mail.config: BLOG_EMAIL = #{BLOG_EMAIL}"

# for Development
ARTICLES_PATH = "http://localhost:3000/articles/"
UNSUBSCRIBE_PATH = "http://localhost:3000/subscribers/"


# # for Production
# ARTICLES_PATH = "http://bloGNote/articles/"
# UNSUBSCRIBE_PATH = "http://bloGNote/subscribers/"
#


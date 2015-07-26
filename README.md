# bloGNote
Simple Rails blog
This is a simple nice easy to use blog, fast created and to be developed later. The plan is to use many fantastic modern features, such as reactive front end, voting on subscribers opinions and others.




To config mailer

1. Put line to file mailer_config.rb
BLOG_EMAIL = 'your_blog_gmail_box'

your_blog_gmail_box - should be gmail.com

2. Put two lines to file development.rb
  config.x.action_mailer.blog_mail = 'your_blog_gmail_box'
  config.x.action_mailer.blog_mail_password = 'your_blog_gmail_password'


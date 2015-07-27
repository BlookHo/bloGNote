# bloGNote
Simple Rails blog
--------------------------------
This is a simple nice easy to use blog, fast created and to be developed later.
The plan is to use many fantastic modern features, such as reactive front end, voting on subscribers opinions and others.

## Sending Emails - New Articles creation notifications
--------------------------------

### To config mailer:

Put line to file mailer_config.rb
- BLOG_EMAIL = 'your_blog_gmail_box'

#### NOTE: your_blog_gmail_box - should be gmail.com

Put two lines to file development.rb
- config.x.action_mailer.blog_mail = 'your_blog_gmail_box'
- config.x.action_mailer.blog_mail_password = 'your_blog_gmail_password'

#### NOTE: When Subscribe - put REAL email address, please.In other case this subscriber wil not receive emails.


## To enter Admin panel
-----------------------------------

#### Goto Login
#### Enter:

- email: admin@admin.ad
- password: admin

Submit -> you will enter Admin panel
In Admin panel - press Home to return to Welcome Blog page.


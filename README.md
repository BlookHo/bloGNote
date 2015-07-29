# bloGNote
Simple Rails blog
--------------------------------
This is a simple nice easy to use blog, fast created and to be developed later.
The plan is to use many fantastic modern features, such as reactive front end, voting on subscribers opinions and others.

## Sending Emails - New Articles creation notifications
--------------------------------
### Before sending emails asyncronous it is necessary to put on terminal:
 ::~/bloGNote$ bundle exec sidekiq

 Sidekiq is already installed in this project.
 Ctrl C - to stop Sidekiq in Terminal

### To config mailer:

Put line to file *mailer_config.rb*
- BLOG_EMAIL = 'your_blog_gmail_box'

#### NOTE: your_blog_gmail_box - should be gmail.com

Create Your own file app/config/secrets.yml.
Put inthis file following data:

development:
  database:
    :host: localhost
    :name: blognote_development
    :username: 'you_db_user'
    :password: 'you_db_password'
  secret_key_base: 'your own db secret key'
  emails:
    :dev_email_name: 'your_blog_gmail_box'
    :dev_email_password: 'your_blog_gmail_password'


Email box 'your_blog_gmail_box' - you will use as host email box of this app on your own machine.

#### NOTE: When Subscribe - put REAL email address, please.In other case this subscriber wil not receive emails.


## To enter Admin panel
-----------------------------------

Goto Login and enter following:

- email: **admin@admin.ad**
- password: **admin**

Submit -> you will enter Admin panel. In Admin panel - press Home to return to Welcome Blog page.


## To reset all DB tables use seeds.rb

    rake db:seed

-------------------------------



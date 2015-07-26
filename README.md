# bloGNote
Simple Rails blog
This is a simple nice easy to use blog, fast created and to be developed later.

Blog contains articles.
The article body can be written and rendered with Markdown.
Articles can have comments.
Visitors can be able to subscribe to the site with their email.
Each time an article is posted, subscribers get an email notification.
Each email contain a link to the article and another to unsubscribe.
Admin panel can be logged in with name "admin@ad.ad" and password "9999"
Code covered with R-Spec test where it is necessary.


## Technical params.
- Database - Posrgresql
- Markdown - Redcarpet, Rouge
- Admin panel -
- Authentication - Sorcery
- Tests - RSpec, Guard-rspec

Further on, the plan is to use many fantastic modern features, such as reactive front end, voting on subscribers opinions and others.

Configure your own blog:

## Mailer
1. Put one line in mailer_config.rb:

   BLOG_EMAIL = 'your_host_blog_email'

        # Should be Gmail! - e.g.: 'myblog@gmail.com' -

2. Put these two lines in development.rb:

   config.x.action_mailer.blog_mail = 'your_host_blog_email'
   config.x.action_mailer.blog_mail_password = 'your_host_blog_email_password'

        # E.g.: 'myblog@gmail.com' - the same as in pos.1
        # E.g.: 'myblog12345'




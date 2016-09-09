source 'https://rubygems.org'

#ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#gem 'rails', '4.2.0'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg'#, '~> 0.18'
# Use Puma as the app local server
gem 'puma', '~> 3.0'

# Web apps on Rails. Simple, battle-tested conventions for building and testing MVC web applications.
# Works with any Rack-compatible server.
#gem 'actionpack' #, '~> 4.2', '>= 4.2.5'

gem 'activerecord-reset-pk-sequence'


# Use HAML for views
gem "haml"   # 4.0.7 Installed
gem 'haml-rails'  # 0.9.0 Installed

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'#, '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
#gem 'therubyracer', platforms: :ruby

# gem 'jquery-datatables-rails'#, git: 'git://github.com/rweng/jquery-datatables-rails.git'
# gem 'twitter-bootstrap-rails'
# gem 'bootstrap-on-rails'
gem 'bootstrap-sass', '3.3.6' # Installed 3.3.6
# gem 'less-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# bundle exec rake doc:rails generates the API under doc/api.
#gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
#gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# gem 'dotenv'
# to manage environment variables

# Pagination
gem 'kaminari' # installed 0.17.0

# Icons fonts
gem 'font-awesome-rails', '~> 4.6', '>= 4.6.3.1'
gem 'font-awesome-sass'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Лучше отображает ошибки
  gem "better_errors" # 2.1.1 Installed
  # gem "binding_of_caller"

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  # gem 'brakeman', :require => false
  # gem 'flog'
  # gem 'flay'

  #gem 'mailcatcher' # mail
  # Test framework
  gem 'rspec-rails', '~> 3.5'  # 3.5.2 Installed
  # gem 'rspec-support'
  # gem 'rspec-support', '~> 3.2.1'
 
end

group :development do
    # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'  #, 3.3.1 Installed

  # gem 'listen', '~> 3.0.5'   # 3.1.5 Installed

  # Automagically launches tests for changed files
  gem 'guard'  # 2.14.0 Installed
  gem 'guard-rspec', '~> 4.6', require: false  # 4.7.3 Installed
  
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
end

group :test do
  # Rspec console formatting
  # gem 'fuubar'

  # Features tests for Rspec
  # gem 'capybara-webkit'#, '~> 1.11.1'
  # gem 'capybara'
  # gem 'capybara-ng'

  # Webkit driver for js feature tests
  # $ brew install qt
  # $ sudo apt-get install qt4-dev-tools libqt4-dev libqt4-core libqt4-gui
  # gem 'capybara-webkit'

  # To open test pages when save_and_open_page method is called
  # gem 'launchy'
  
  # For active record imitation in tests
  gem "factory_girl_rails"  # 4.7.0

  # Enables screenshots creation during tests
  # gem 'capybara-screenshot'

  # Auto cleans test db after each test run
  gem 'database_cleaner'

  # Faker, a port of Data::Faker from Perl,
  # is used to easily generate fake data: names, addresses, phone numbers, etc.
  gem 'faker', '~> 1.5'

end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Disable assets logging
# gem 'quiet_assets', :group => :development

gem "ruby-growl"

# Memcached
gem 'dalli', '~> 2.7.4'

# Markdown
gem 'redcarpet', github: 'vmg/redcarpet'
# gem 'rouge'

# authentification
gem 'sorcery'

# Asynchronous email delivery
# gem 'sidekiq'

# admin panel
# for Rails 5.0
gem 'remotipart', github: 'mshibuya/remotipart'
gem 'rails_admin', '>= 1.0.0.rc'

group :production do
  # For Heroku deployment
  gem 'rails_12factor'
end

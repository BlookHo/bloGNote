source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
gem 'activerecord-reset-pk-sequence'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# gem 'jquery-datatables-rails'#, git: 'git://github.com/rweng/jquery-datatables-rails.git'
# gem 'twitter-bootstrap-rails'
gem 'bootstrap-on-rails'
gem 'less-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

gem 'dotenv'
# to manage environment variables

# Pagination
gem 'kaminari'

# Icons fonts
gem 'font-awesome-rails', '~> 4.2.0.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Лучше отображает ошибки
  gem "better_errors"
  gem "binding_of_caller"

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'brakeman', :require => false
  gem 'flog'
  gem 'flay'

  #gem 'mailcatcher' # mail

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Automagically launches tests for changed files
  gem 'guard'
  gem 'guard-rspec', require: false

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  gem 'spring-commands-rspec'

  # Test framework
  gem 'rspec-rails'
  gem 'rspec-support'
  # gem 'rspec-support', '~> 3.2.1'
  # For active record imitation in tests
  gem 'factory_girl_rails'

end

group :test do
  # Rspec console formatting
  gem 'fuubar'

  # Features tests for Rspec
  gem 'capybara'
  gem 'capybara-ng'

  # Webkit driver for js feature tests
  # $ brew install qt
  # $ sudo apt-get install qt4-dev-tools libqt4-dev libqt4-core libqt4-gui
  gem 'capybara-webkit'

  # To open test pages when save_and_open_page method is called
  gem 'launchy'

  # Enables screenshots creation during tests
  gem 'capybara-screenshot'

  # Auto cleans test db after each test run
  gem 'database_cleaner'
end

# Disable assets logging
gem 'quiet_assets', :group => :development

gem "ruby-growl"

# Markdown
gem 'redcarpet', github: 'vmg/redcarpet'
gem 'rouge'

# authentification
gem 'sorcery'

# admin panel
gem 'rails_admin', '~> 0.6.8'

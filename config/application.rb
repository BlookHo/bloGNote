# encoding: utf-8

Encoding.default_external = "UTF-8"

require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'date'
require 'time'

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Bundler.require(*Rails.groups)
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module BloGNote
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Load abstract class in rails_root/app/models
    config.autoload_paths += Dir[Rails.root.join('app', 'models', 'abstracts')]

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.i18n.default_locale = :en
    I18n.enforce_available_locales = true
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.fallbacks = true
    config.i18n.fallbacks = [:ru]

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    config.sass.preferred_syntax = :sass

    #### Async Mailer
    # config.action_mailer.async = true

    config.force_ssl = false    # сделано в целях ухода от Ошибка 107 (net::ERR_SSL_PROTOCOL_ERROR): Ошибка протокола SSL.
    # 25.06.13 - 10-25
    # Enable the asset pipeline
    config.assets.enabled = true

    #js compression
    config.assets.compress = true
    config.assets.js_compressor = :uglifier

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    # чтобы fontAwesome также был в assets
    # config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts', 'sounds')
    config.assets.precompile += %w( .svg .eot .woff .ttf)

    # Не показывать логи assets в development
    config.quiet_assets = true

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # роуты для ошибок
    config.exceptions_app = self.routes
  end
end

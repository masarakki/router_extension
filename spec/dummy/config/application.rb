# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'

Bundler.require(*Rails.groups)
require 'router_extensions'

module Dummy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults "#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}"

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

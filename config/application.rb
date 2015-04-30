require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DontMisbehave
  class Application < Rails::Application
    
    config.encoding = 'utf-8'
    
    config.generators do |g|
      g.assets = false
      g.helper = false
      g.javascripts = false
      g.stylesheets = false
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :fabrication
    end

    config.active_record.raise_in_transactional_callbacks = true
  end
end

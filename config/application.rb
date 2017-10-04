require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module RailsVue
  class Application < Rails::Application
    config.load_defaults 5.1

    config.i18n.default_locale = :ja

    config.time_zone = 'Tokyo'

    config.generators do |g|
      g.test_framework  nil
      g.assets  false
      g.helper false
      g.stylesheets false
    end
  end
end

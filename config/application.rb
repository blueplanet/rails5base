require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Rails5base
  class Application < Rails::Application
    config.time_zone = 'Asia/Tokyo'
    config.i18n.available_locales = [:en, :ja]
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.assets false
      g.view_specs false
      g.controller_specs false
      g.helper_specs false
      g.fixture false
    end
  end
end

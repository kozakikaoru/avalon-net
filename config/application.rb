# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module AvalonNet
  class Application < Rails::Application
    config.title = 'AVALON Network'

    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

    config.load_defaults 6.0

    config.action_view.field_error_proc = Proc.new { |html_tag, _instance| html_tag }

    config.generators do |g|
      g.system_tests = nil
      g.assets false
      g.helper false
      g.template_engine :slim
    end
  end
end

# require_relative 'boot'
require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)
require "better_styles"

module Dummy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    
    # compile template css
    config.assets.precompile += %w( templates/fixed_aside_to_header.css )
    config.assets.precompile += %w( templates/icon_aside.css )
    config.assets.precompile += %w( templates/scroll_to_fix_aside.css )
    
    # config.assets.precompile += %w(blank.js)
    
  end
end


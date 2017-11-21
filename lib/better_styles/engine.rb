# require "bootstrap"

module BetterStyles
  module Rails
    class Engine < ::Rails::Engine
      
      initializer "better_styles.assets.precompile" do |app|
        
        # compile pictures (this way also from vendor)
        app.config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
        
        # compile fonts (this way also from vendor)
        app.config.assets.precompile += %w(*.eot *.svg *.ttf *.woff)
        
      end
      
      initializer 'bootstrap.assets' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
      
    end
  end
end
module Cycle2
  module Rails
    class Engine < ::Rails::Engine
      initializer "configure assets of cycle2-rails", :group => :all do |app|
        app.config.assets.precompile += %w( cycle2-rails/*.js )
      end
    end
  end
end

require "tilt"

# Clementine extension
module Middleman::Clementine

  # Setup extension
  class << self

    # Once registered
    def registered(app)
      # Location of javascripts external to source directory.
      # @return [Array]
      #   set :js_assets_paths, ["#{root}/assets/javascripts/", "/path/2/external/js/repository/"]
    
      ::Sprockets.register_engine 'clj', ::Clementine::ClojureScriptTemplate
      ::Sprockets.register_engine 'cljs', ::Clementine::ClojureScriptTemplate
      ::Tilt.register 'clj', ::Clementine::ClojureScriptTemplate
      ::Tilt.register 'cljs', ::Clementine::ClojureScriptTemplate
    end
  end
end


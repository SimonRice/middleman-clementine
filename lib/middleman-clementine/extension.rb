require "clementine"
require "tilt"

# Clementine extension
module Clementine < Middleman::Extension
  option :optimizations, :none, ""
  option :pretty_print, false, ""
  option :output_dir, nil, ""
  
  def initialize(app, options_hash={}, &block)
    super
  
    ::Sprockets.register_engine 'clj', ::Clementine::ClojureScriptTemplate
    ::Sprockets.register_engine 'cljs', ::Clementine::ClojureScriptTemplate
    ::Tilt.register 'clj', ::Clementine::ClojureScriptTemplate
    ::Tilt.register 'cljs', ::Clementine::ClojureScriptTemplate
  end
  
  def after_configuration
    Clementine[:output_dir] = :js_dir
    Clementine[:optimizations] = :none
  end
end


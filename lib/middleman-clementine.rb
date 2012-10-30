require "middleman-core"
require "middleman-more"

Middleman::Extensions.register(:clementine) do
  require "middleman-clementine/extension"
  Middleman::Clementine
end

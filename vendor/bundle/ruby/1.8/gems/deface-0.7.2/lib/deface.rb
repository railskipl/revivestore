require "action_view"
require "action_controller"
require "deface/action_view_extensions"
require "deface/template_helper"
require "deface/override"
require "deface/parser"
require "deface/environment"

module Deface
  if defined?(Rails)
    require "deface/railtie"
  end
end

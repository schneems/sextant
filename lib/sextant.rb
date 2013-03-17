require 'rails/application/route_inspector'
require 'sextant/engine'
require 'rails/routes'

module Sextant
  def self.format_routes(routes = all_routes)
    # ActionDispatch::Routing::RoutesInspector.new.collect_routes(_routes.routes)
    inspector = Rails::Application::RouteInspector.new
    main_app_routes = inspector.collect_routes(routes)
    engines_routes = inspector.instance_eval { @engines } # No direct way to access engines rotues

    {main_app: main_app_routes, engines: engines_routes}
  end

  def self.all_routes
    Rails.application.reload_routes!
    Rails.application.routes.routes
  end
end


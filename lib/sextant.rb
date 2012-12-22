require 'rails/application/route_inspector'
require 'sextant/engine'
require 'rails/routes'

module Sextant
  def self.format_routes(routes = all_routes)
    # ActionDispatch::Routing::RoutesInspector.new.collect_routes(_routes.routes)
    inspector = Rails::Application::RouteInspector.new
    inspector.collect_routes(routes)
  end

  def self.all_routes
    Rails.application.reload_routes!
    Rails.application.routes.routes
  end
end


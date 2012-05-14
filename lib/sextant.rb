require 'rails/application/route_inspector'
require 'sextant/engine'

module Sextant
  def self.format_routes(routes = all_routes)
    inspector = Rails::Application::RouteInspector.new
    inspector.format(routes, ENV['CONTROLLER']).join "\n"
  end

  def self.all_routes
    Rails.application.reload_routes!
    Rails.application.routes.routes
  end
end


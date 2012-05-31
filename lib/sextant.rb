require 'rails/application/route_inspector'
require 'sextant/engine'

module Sextant
  def self.controller_base_class=(controller_base_class)
    @controller_base_class = controller_base_class
  end

  def self.controller_base_class
    return @controller_base_class if @controller_base_class
    return ::ApplicationController if defined? ::ApplicationController
    return ::ActionController::Base if defined? ::ActionController::Base

    raise "Couldn't find a controller base class"
  end

  def self.format_routes(routes = all_routes)
    inspector = Rails::Application::RouteInspector.new
    inspector.format(routes, ENV['CONTROLLER']).join "\n"
  end

  def self.all_routes
    Rails.application.reload_routes!
    Rails.application.routes.routes
  end
end


require 'sextant/engine'
require 'rails/routes'

module Sextant

  begin
    require 'rails/application/route_inspector'
    ROUTE_INSPECTOR = Rails::Application::RouteInspector.new
  rescue LoadError
    require 'action_dispatch/routing/inspector'
    ROUTE_INSPECTOR = ActionDispatch::Routing::RoutesInspector.new([])
  end

  def self.format_routes(controller = nil, routes = all_routes)
    # ActionDispatch::Routing::RoutesInspector.new.collect_routes(_routes.routes)
    ROUTE_INSPECTOR.send :get_controller_routes, routes, controller
  end

  def self.all_routes
    Rails.application.reload_routes!
    Rails.application.routes.routes
  end
end


module Rails
  class Application
    class RouteInspector
      def get_controller_routes all_routes, filter = nil
         if filter
          all_routes = all_routes.select{ |route| route.defaults[:controller] == filter }
        end
        routes = collect_routes(all_routes)
      end
    end
  end
end


module ActionDispatch
  module Routing
    class RoutesInspector
      def get_controller_routes all_routes, filter = nil
         if filter
          all_routes = all_routes.select{ |route| route.defaults[:controller] == filter }
        end
        routes = collect_routes(all_routes)
      end 
    end
  end
end


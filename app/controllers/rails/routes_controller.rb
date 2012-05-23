class Rails::RoutesController < ApplicationController
  layout 'rails/routes'

  # Skipp all filters for this this rails/routes :-)
  skip_filter(*_process_action_callbacks.map(&:filter)) 
  
  def index
    @routes = Sextant.format_routes
  end

  private
  def ensure_local
    return false if ActionView::Resolver.caching
  end

end
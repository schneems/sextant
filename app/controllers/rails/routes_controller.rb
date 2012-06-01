class Rails::RoutesController < ActionController::Base
  layout 'rails/routes'

  before_filter :ensure_local

  def index
    @routes = Sextant.format_routes
  end

  private
  def ensure_local
    return false if ActionView::Resolver.caching
  end

end
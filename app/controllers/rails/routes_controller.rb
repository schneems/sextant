class Rails::RoutesController < ApplicationController
  layout 'rails/routes'

  before_filter :restrict_to_development

  def index
    @routes = Sextant.format_routes
  end

  private
  def restrict_to_development
    head(:bad_request) unless RAILS_ENV == "development"
  end

end
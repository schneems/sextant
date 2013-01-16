module Sextant
  class RoutesController < Sextant::ApplicationController
    layout 'sextant/application'

    before_filter :require_local!

    def index
      @routes = Sextant.format_routes
    end

    private
    def require_local!
      unless local_request?
        render :text => '<p>For security purposes, this information is only available to local requests.</p>', :status => :forbidden
      end
    end

    def local_request?
      Rails.application.config.consider_all_requests_local || request.local?
    end

  end
end


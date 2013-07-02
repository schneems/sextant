module Sextant
  class RoutesController < Sextant::ApplicationController
    layout 'sextant/application'

    before_filter :require_local!

    def index
      # @controllers = ["All routes"]
      @controllers = Dir[Rails.root.join('app/controllers/*_controller.rb')].map { |path| path.match(/(\w+)_controller.rb/); $1 }.compact
      @routes = Sextant.format_routes(params[:id])
      # render text: @controllers
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


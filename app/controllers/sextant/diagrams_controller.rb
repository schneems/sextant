module Sextant
  require 'method_source'

  class DiagramsController < Sextant::ApplicationController
    layout 'sextant/application'

    def index
      id = params[:id].to_i || 0
      route = Sextant.format_routes[id][:reqs].split('#')
      classname, methodname = route
      classname = eval((classname + '_controller').classify)
      file, line = classname.instance_method(methodname.to_sym).source_location
      @routeinfo = "Method '##{methodname}' is defined in #{file}, line #{line}"
      file = classname.instance_method(methodname.to_sym).source
      @file = file.gsub("\n", "<br>").html_safe
    end
  end
end

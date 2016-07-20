module Sextant
  class DiagramsController < Sextant::ApplicationController
    layout 'sextant/application'

#    before_filter :require_local!

    def index
      id = params[:id].to_i || 0
      
      route = Sextant.format_routes[id][:reqs].split('#')
      
      classname, methodname = route
      classname = (classname + '_controller').classify

      file, line = eval(classname).instance_method(methodname.to_sym).source_location
      @routeinfo = "Method '##{methodname}' is defined in #{file}, line #{line}"
    end

  end
end


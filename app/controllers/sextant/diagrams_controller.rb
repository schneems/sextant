module Sextant
  class DiagramsController < Sextant::ApplicationController
    layout 'sextant/application'

#    before_filter :require_local!

    def index
      id = params[:id].to_i || 0
      
      route = Sextant.format_routes[id][:reqs].split('#')
      
      classname, methodname = route
      classname = eval((classname + '_controller').classify)


      file, line = classname.instance_method(methodname.to_sym).source_location
      @routeinfo = "Method '##{methodname}' is defined in #{file}, line #{line}"
      
#      p classname.method(methodname.to_sym).to_source
      f = File.open(file, 'r')
      p '###############################################################'
      @file = f.each_line.to_a[(line-1)..-1].join(//)
      f.close
      

    end

  end
end


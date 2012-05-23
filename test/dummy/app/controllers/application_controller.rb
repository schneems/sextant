class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :example_filter
  
  def example_filter
    redirect_to '/'
  end
  
end

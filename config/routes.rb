Rails.application.routes.draw do
  namespace :rails do
    resources :routes, :only => [:index, :show]
  end
end

# RouteInspector::Engine.routes.draw do
# 
# end

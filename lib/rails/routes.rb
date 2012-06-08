module ActionDispatch::Routing
  class Mapper
    # Includes mount_sextant method for routes. This method is responsible to
    # generate all needed routes for sextant
    def mount_sextant
      namespace :rails do
        resources :routes, :only => [:index]
      end
    end
  end
end

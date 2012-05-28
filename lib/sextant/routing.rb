module Sextant
  #convenience methods for Rails routing
  module Routing
    # function for mounting the sextant rails engine to root
    def mount_sextant
      namespace :rails do
        resources :routes, :only => [:index, :show]
      end
    end
  end
end
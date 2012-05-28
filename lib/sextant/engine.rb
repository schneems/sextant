module Sextant
  class Engine < Rails::Engine
    isolate_namespace Sextant

    initializer "Sextant mount routes" do
      ActionDispatch::Routing::Mapper.send(:include, Sextant::Routing)
    end
  end
end

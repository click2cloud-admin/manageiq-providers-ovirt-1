module ManageIQ
  module Providers
    module Redhat
      class Engine < ::Rails::Engine
        isolate_namespace ManageIQ::Providers::Redhat
      end
    end
  end
end


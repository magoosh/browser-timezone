require 'browser-timezone'

module BrowserTimezone
  require 'rails'
  
  class Railtie < Rails::RailTie
    initializer "browser-timezone.insert_into_action_controller" do
      ActiveSupport.on_load :action_controller do
        BrowserTimezone::Railtie.insert
      end
    end
  end
  
  class Railtie
    def self.insert
      if defined?(ActionController)
        ActionController::Base.send(:include, BrowserTimezone::Glue)
      end
    end
  end
end
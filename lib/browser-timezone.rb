require "browser-timezone/version"

require "browser-timezone/engine" # For javascript assets

# The base module that gets included in ActionController::Base
module BrowserTimezone
  module ClassMethods
    
    # `options` are passed as options for before_filter
    def sets_timezone_from_browser(options = {})
      before_filter(options) do
        Time.zone = ActiveSupport::TimeZone[-cookies[:tzoffset].to_i.minutes]
      end
    end
  end
end

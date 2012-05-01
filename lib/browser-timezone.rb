require "browser-timezone/version"

require "browser-timezone/engine" # For javascript assets
require "browser-timezone/instance_methods"

# The base module that gets included in ActionController::Base
module BrowserTimezone
  module ClassMethods
    
    # `options` are passed as to before_filter
    def sets_timezone_from_browser(options = {})
      before_filter :set_timezone_from_browser, options
    end
  end
end

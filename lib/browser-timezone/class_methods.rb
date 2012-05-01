# The base module that gets included in ActionController::Base
module BrowserTimezone
  module ClassMethods
    
    # `options` are passed as to before_filter
    def set_timezone_from_browser(options = {})
      before_filter :set_timezone_from_browser_cookie, options
    end
  end
end

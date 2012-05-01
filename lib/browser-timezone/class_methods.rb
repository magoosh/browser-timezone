module BrowserTimezone
  module ClassMethods
    protected
    # Adds a before_filter which sets the timezone
    #
    # options - Set which actions have the timezone detected
    #         :only/:except - Passed to the before_filter
    #
    # Example
    #
    # class ApplicationController < ActionController::Base
    #   set_timezone_from_browser
    # end
    #
    def set_timezone_from_browser(options = {})
      prepend_before_filter :set_timezone_from_browser_cookie, options
    end
  end
end

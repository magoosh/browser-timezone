module BrowserTimezone
  module InstanceMethods
    protected
    
    def set_timezone_from_browser_cookie
      Time.zone = browser_timezone || 'UTC'
    end
    
    def browser_timezone
      return nil if cookies[:tzoffset].blank?
      ActiveSupport::TimeZone[-cookies[:tzoffset].to_i.minutes]
    end
  end
end
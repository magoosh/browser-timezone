module BrowserTimezone
  module InstanceMethods
    protected

    # Internal: Sets the Time class's default zone to the value returned by browser_timezone
    # This method should be called as a before_action
    def set_timezone_from_browser_cookie
      Time.zone = browser_timezone || 'UTC'
    end

    # Internal: Gets the timezone that corresponds to the value in the tzoffset cookie
    #
    # Returns: Returns a string or nil
    def browser_timezone
      return nil if cookies[:tzoffset].blank?
      return nil if cookies[:tzname].blank?

      # Prefer the exact time zone, but fallback to the correct UTC offset if needed
      ActiveSupport::TimeZone.new(cookies[:tzname]) || ActiveSupport::TimeZone[-cookies[:tzoffset].to_i.minutes]
    end
  end
end

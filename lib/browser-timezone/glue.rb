module BrowserTimezone
  module Glue
    def self.included base
      base.extend ClassMethods
    end
  end
end
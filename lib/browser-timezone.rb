require "browser-timezone/version"

require "browser-timezone/engine" if defined?(Rails) # For javascript assets

require "browser-timezone/instance_methods"
require "browser-timezone/class_methods"

require "browser-timezone/railtie" if defined?(Rails)

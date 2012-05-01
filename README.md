# Browser Timezone #

A gem that automatically detects the user's timezone from their browser and then applies it in the controller.

## Installation ##

Add the gem to your Gemfile:

  ```ruby
  gem 'browser-timezone', :git => "git://github.com/zmillman/browser-timezone.git"
  ```

## Usage ##

In your controller:

  ```ruby
  class ApplicationController < ActionController::Base
    sets_timezone_from_browser
  end
  ````
  
That's it.

Thanks to (http://techno-weenie.net/2008/2/6/timezone-awareness-in-rails/)[technoweenie's article] for the inspiration.

# Browser Timezone #

This gem automatically detects the user's timezone offset from their browser by setting a cookie, then applies it in the controller by setting `Time.zone` to the appropriate timezone.

## Installation ##

Add the gem to your Gemfile:

  ```ruby
  gem 'browser-timezone', :git => "git://github.com/magoosh/browser-timezone.git"
  ```

## Usage ##

In your controller:

  ```ruby
  class ApplicationController < ActionController::Base
    set_timezone_from_browser
  end
  ````
  
That's it.

Thanks to [technoweenie's article](http://techno-weenie.net/2008/2/6/timezone-awareness-in-rails/) for the inspiration.

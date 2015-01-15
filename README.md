# Browser Timezone (for Rails) #

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

Thanks to [@technoweenie's article](https://github.com/technoweenie/technoweenie.github.com/blob/187070bd6a644d7d61bfcc1aa2fa74224749b2dd/_posts/2008/2008-2-6-timezone-awareness-in-rails.markdown) for the inspiration.

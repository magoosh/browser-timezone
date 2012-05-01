# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "browser-timezone/version"

Gem::Specification.new do |s|
  s.name        = "browser-timezone"
  s.version     = BrowserTimezone::VERSION
  s.authors     = ["Zach Millman"]
  s.email       = ["zach.millman@gmail.com"]
  s.homepage    = "https://github.com/zmillman/browser-timezone"
  s.summary     = %q{Timezone detection for Rails}
  s.description = %q{Browser Timezone is a gem for easy detection of a user's timezone in their browser}

  s.rubyforge_project = "browser-timezone"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

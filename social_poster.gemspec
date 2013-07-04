# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'social_poster/version'

Gem::Specification.new do |gem|
  gem.name          = "social_poster"
  gem.version       = SocialPoster::VERSION
  gem.authors       = ["HeeL"]
  gem.email         = ["parizhskiy@gmail.com"]
  gem.description   = %q{SocialPoster is a gem that allows you easily post to different social networks.}
  gem.summary       = %q{Post to social networks}
  gem.homepage      = "https://github.com/HeeL/social_poster"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.require_paths = ["lib"]

  gem.add_dependency('test-unit', '2.4.3')
  gem.add_dependency('shoulda', '2.11.3')
  gem.add_dependency('shoulda-matchers', '1.2.0')
  gem.add_dependency('mocha', '0.13.0')

end

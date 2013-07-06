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

  gem.add_dependency('test-unit', '2.5.5')
  gem.add_dependency('shoulda', '3.5.0')
  gem.add_dependency('shoulda-matchers', '2.2.0')
  gem.add_dependency('mocha', '0.14.0')
  gem.add_dependency('fb_graph', '~> 2.7.7')
  gem.add_dependency('twitter', '~> 4.0')
  gem.add_dependency('livejournal', '~> 0.3.8')
  gem.add_dependency('vk-ruby', '~> 0.9.4')

end

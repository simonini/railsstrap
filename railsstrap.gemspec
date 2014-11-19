$:.push File.expand_path('../lib', __FILE__)
require 'railsstrap/constants'

Gem::Specification.new do |s|
  s.name        = 'railsstrap'
  s.version     = Railsstrap::Constants::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Todd Baur']
  s.email       = ['todd@toadkicker.com']
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/toadkicker/railsstrap'
  s.summary     = %q{Bootstrap CSS toolkit for Rails 3.1+ Asset Pipeline}
  s.description = %q{Make rails and bootstrap sing with awesome helpers, additional components, and more.}

  s.rubyforge_project = 'railsstrap'
  s.files = Dir['lib/**/*'] + Dir['vendor/**/*'] + Dir['app/**/*'] + %w(Rakefile README.md .bowerrc)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib app)

  s.add_dependency         'actionpack', '~> 3.1'
  s.add_dependency         'less-rails', '~> 2.5'
  if Gem::Platform::RUBY === 'jruby'
    s.add_runtime_dependency 'therubyrhino', '~> 1.72'
  else
    s.add_runtime_dependency 'therubyracer', '~> 0.10'
  end
end

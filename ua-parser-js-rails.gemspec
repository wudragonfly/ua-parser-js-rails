lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ua/parser/js/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "ua-parser-js-rails"
  spec.version       = Ua::Parser::Js::Rails::VERSION
  spec.authors       = ["Longfei Wu"]
  spec.email         = ["wudragonfly@gmail.com"]

  spec.summary       = %q{A gem that makes ua-parser-js available to the Rails asset pipeline.}
  spec.description   = %q{A gem that makes ua-parser-js available to the Rails asset pipeline.}
  spec.homepage      = "https://github.com/wudragonfly/ua-parser-js-rails"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

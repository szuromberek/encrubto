
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "encrubto/version"

Gem::Specification.new do |spec|
  spec.name          = "encrubto"
  spec.version       = Encrubto::VERSION
  spec.authors       = ["Mark Torok"]
  spec.email         = ["torokmark@gmx.com"]

  spec.summary       = %q{Encryption library}
  spec.description   = %q{Ruby library intended to provide encryption algorithms.}
  spec.homepage      = "https://github.com/torokmark/encrubto"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.4"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.3"

  spec.add_development_dependency "rspec", "~> 3.7"
  spec.add_development_dependency "rspec-expectations", "~> 3.7"
  spec.add_development_dependency "coveralls", "~> 0.8"
  
  spec.add_development_dependency "pry", "~> 0.11"
  
  spec.add_development_dependency "openssl", "~> 2.1.2"
end

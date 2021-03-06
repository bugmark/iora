lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iora/version"

Gem::Specification.new do |spec|
  spec.name          = "iora"
  spec.version       = Iora::VERSION
  spec.authors       = ["Andrew Leak"]
  spec.email         = ["andy@r210.com"]

  spec.summary       = %q{Issue Oracle}
  spec.description   = %q{Bugmark Issue Oracle}
  spec.homepage      = "http://github.com/bugmark/iora"
  spec.license       = "Nonstandard"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this
  # section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = %w(iora)
  spec.require_paths = ["lib"]

  spec.add_dependency "octokit", "~> 4.6"
  spec.add_dependency "deep_merge", "~> 1.2"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.11"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "vcr", "~> 4.0"
  spec.add_development_dependency "faraday-http-cache", "~> 2.0"
  spec.add_development_dependency "webmock", "~> 3.3"
end

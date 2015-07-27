# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mono_parches/version'

Gem::Specification.new do |spec|
  spec.name          = "mono_parches"
  spec.version       = MonoParches::VERSION
  spec.authors       = ["Fernando Garcia Samblas"]
  spec.email         = ["fernando.garcia@the-cocktail.com"]

  spec.summary       = %q{Amazing Ruby monkey patchs that i like to have on hand.}
  spec.description   = %q{Inspired by Justin Weiss' post "3 Ways to Monkey-patch Without Making a Mess".}
  spec.homepage      = "http://github.com/nando/mono_parches"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end

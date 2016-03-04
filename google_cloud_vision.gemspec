# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_cloud_vision/version'

Gem::Specification.new do |spec|
  spec.name          = "google_cloud_vision"
  spec.version       = GoogleCloudVision::VERSION
  spec.authors       = ["Ryan Rusnak"]
  spec.email         = ["rusnak@vt.edu"]

  spec.summary       = %q{A simple ruby wrapper for the google cloud vision API.}
  spec.description   = %q{This was not written by Google or with the permission of Google. I just really like Google and want to help ruby developers better use this awesome API}
  spec.homepage      = "https://github.com/AirspaceTechnologies/google-cloud-vision"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
end

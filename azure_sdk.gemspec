# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "azure_sdk/version"

Gem::Specification.new do |spec|
  spec.name          = "azure_sdk"
  spec.version       = AzureSDK::VERSION
  spec.authors       = ["ManageIQ Authors"]
  spec.email         = []

  spec.summary       = "Azure Resource Manager Ruby client"
  spec.description   = "Ruby client for the Azure Resource Manager REST API, generated from the official OpenAPI specs."
  spec.homepage      = "https://github.com/ManageIQ/azure_sdk"
  spec.license       = "Apache-2.0"
  spec.required_ruby_version = ">= 2.7"

  spec.files         = Dir["lib/**/*.rb", "LICENSE", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart"

  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
end

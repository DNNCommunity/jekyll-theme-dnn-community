# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-dnn-community"
  spec.version       = "0.1.2"
  spec.authors       = ["valadas"]
  spec.email         = ["info@danielvaladas.com"]

  spec.summary       = "This is a theme for Dnn community modules documentation"
  spec.homepage      = "https://dnnsoftware.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.7.4"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end

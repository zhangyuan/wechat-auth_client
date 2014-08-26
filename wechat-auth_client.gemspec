# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wechat/auth_client/version'

Gem::Specification.new do |spec|
  spec.name          = "wechat-auth_client"
  spec.version       = Wechat::AuthClient::VERSION
  spec.authors       = ["Yuan Cheung"]
  spec.email         = ["zhangyuan@users.noreply.github.com"]
  spec.summary       = %q{WeChat OAuth Client}
  spec.description   = %q{WeChat OAuth Client}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "multi_json"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

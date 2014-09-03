# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wechat/auth_client/version'

Gem::Specification.new do |spec|
  spec.name          = "wechat-auth_client"
  spec.version       = Wechat::AuthClient::VERSION
  spec.authors       = ["Yuan Cheung"]
  spec.email         = ["evyuancheung@gmail.com"]
  spec.summary       = %q{WeChat OAuth Client}
  spec.description   = %q{Simple WeChat OAuth Client}
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/zhangyuan/wechat-auth_client"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday", "~> 0.9"
  spec.add_runtime_dependency "multi_json", "~> 1.2"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 1.18"
end

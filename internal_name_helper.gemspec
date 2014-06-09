# -*- encoding: utf-8 -*-
$:.unshift File.expand_path('../lib', __FILE__)
require 'internal_name_helper/version'

Gem::Specification.new do |s|
  s.name         = "internal_name_helper"
  s.version      = InternalNameHelper::VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Elan Meng"]
  s.email        = ["dreamwords@gmail.com"]
  s.homepage     = "https://github.com/dreamwords/internal_name_helper"
  s.summary      = "Auto load all instance for the model and generate helper methods"
  s.description  = "Auto load all instance for the model and generate helper methods."
  s.license      = 'MIT'
  
  s.files        = `git ls-files {app,config,lib}`.split("\n") + %w[LICENSE README.md]
  s.require_path = "lib"
end
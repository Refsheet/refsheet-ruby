# -*- encoding: utf-8 -*-
#
=begin
#Refsheet.net API

#The Refsheet.net API allows another application to view and manipulate data on behalf of a user. To get started, [generate an API Key from your account settings](https://refsheet.net/account/settings/api). 

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

$:.push File.expand_path("../lib", __FILE__)
require "refsheet/version"

Gem::Specification.new do |s|
  s.name        = "refsheet"
  s.version     = Refsheet::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mau Abata"]
  s.email       = ["mau@refsheet.net"]
  s.homepage    = "https://refsheet.net/api"
  s.summary     = "A Ruby wrapper for the Refsheet.net API"
  s.description = "Ruby wrapper for the Refsheet.net API"
  s.license     = "Apache-2.0"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 1.8', '>= 1.8.3'

  s.add_development_dependency 'rspec', '~> 3.4', '>= 3.4.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.11'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.bindir        = 'bin'
  s.executables   = ["refsheet"]
  s.require_paths = ["lib"]

  s.metadata = {
      "source_code_uri" => "https://github.com/Refsheet/refsheet-ruby"
  }
end

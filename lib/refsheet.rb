=begin
#Refsheet.net API

#The Refsheet.net API allows another application to view and manipulate data on behalf of a user. To get started, [generate an API Key from your account settings](https://refsheet.net/account/settings/api).  ## Authentication  The API requires two values, `api_key_id` and `api_key_secret` to be sent either as query parameters or via headers.  |Field|URL Param|Header| |---|---|---| |API Key ID|`api_key_id`|`X-ApiKeyId`| |API Key Secret|`api_key_secret`|`X-ApiKeySecret`|   ``` curl -H \"X-ApiKeyId: YOUR_KEY_ID\" \\      -H \"X-ApiKeySecret: YOUR_KEY_SECRET\" \\      https://refsheet.net/api/v1/users/abc123 ``` 

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

# Common files
require 'refsheet/api_client'
require 'refsheet/api_error'
require 'refsheet/version'
require 'refsheet/configuration'

# Models
require 'refsheet/models/inline_response_200'
require 'refsheet/models/inline_response_200_data'
require 'refsheet/models/inline_response_200_data_attributes'

# APIs
require 'refsheet/api/users_api'

module Refsheet
  class << self
    # Customize default settings for the SDK using block.
    #   Refsheet.configure do |config|
    #     config.api_key_id = "xxx"
    #     config.api_key_secret = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end

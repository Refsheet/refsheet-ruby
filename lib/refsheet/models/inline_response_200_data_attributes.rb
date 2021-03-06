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

require 'date'

module Refsheet

  class InlineResponse200DataAttributes
    attr_accessor :name

    attr_accessor :username

    attr_accessor :avatar_url

    attr_accessor :profile_image_url

    attr_accessor :is_admin

    attr_accessor :is_patron

    attr_accessor :is_supporter

    attr_accessor :is_moderator


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'username' => :'username',
        :'avatar_url' => :'avatar_url',
        :'profile_image_url' => :'profile_image_url',
        :'is_admin' => :'is_admin',
        :'is_patron' => :'is_patron',
        :'is_supporter' => :'is_supporter',
        :'is_moderator' => :'is_moderator'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'username' => :'String',
        :'avatar_url' => :'String',
        :'profile_image_url' => :'String',
        :'is_admin' => :'BOOLEAN',
        :'is_patron' => :'BOOLEAN',
        :'is_supporter' => :'BOOLEAN',
        :'is_moderator' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'avatar_url')
        self.avatar_url = attributes[:'avatar_url']
      end

      if attributes.has_key?(:'profile_image_url')
        self.profile_image_url = attributes[:'profile_image_url']
      end

      if attributes.has_key?(:'is_admin')
        self.is_admin = attributes[:'is_admin']
      end

      if attributes.has_key?(:'is_patron')
        self.is_patron = attributes[:'is_patron']
      end

      if attributes.has_key?(:'is_supporter')
        self.is_supporter = attributes[:'is_supporter']
      end

      if attributes.has_key?(:'is_moderator')
        self.is_moderator = attributes[:'is_moderator']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @username.nil?
      return false if @avatar_url.nil?
      return false if @profile_image_url.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          username == o.username &&
          avatar_url == o.avatar_url &&
          profile_image_url == o.profile_image_url &&
          is_admin == o.is_admin &&
          is_patron == o.is_patron &&
          is_supporter == o.is_supporter &&
          is_moderator == o.is_moderator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, username, avatar_url, profile_image_url, is_admin, is_patron, is_supporter, is_moderator].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Refsheet.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end

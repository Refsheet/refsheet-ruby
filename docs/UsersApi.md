# Refsheet::UsersApi

All URIs are relative to *https://http://dev1.refsheet.net/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](UsersApi.md#find) | **GET** /users/{id} | Retrieves a User


# **find**
> InlineResponse200 find(id)

Retrieves a User

Find a user by ID

### Example
```ruby
# load the gem
require 'refsheet'
# setup authorization
Refsheet.configure do |config|
  # Configure API key authorization: apiKeySecret
  config.api_key['X-ApiKeySecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-ApiKeySecret'] = 'Bearer'

  # Configure API key authorization: apiKeyId
  config.api_key['X-ApiKeyId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-ApiKeyId'] = 'Bearer'
end

api_instance = Refsheet::UsersApi.new

id = "id_example" # String | User GUID


begin
  #Retrieves a User
  result = api_instance.find(id)
  p result
rescue Refsheet::ApiError => e
  puts "Exception when calling UsersApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User GUID | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKeySecret](../README.md#apiKeySecret), [apiKeyId](../README.md#apiKeyId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




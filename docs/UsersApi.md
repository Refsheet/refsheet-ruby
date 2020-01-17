# Refsheet::UsersApi

All URIs are relative to *https://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_id_get**](UsersApi.md#users_id_get) | **GET** /users/{id} | Retrieves a User


# **users_id_get**
> users_id_get(id)

Retrieves a User

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
  api_instance.users_id_get(id)
rescue Refsheet::ApiError => e
  puts "Exception when calling UsersApi->users_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User GUID | 

### Return type

nil (empty response body)

### Authorization

[apiKeySecret](../README.md#apiKeySecret), [apiKeyId](../README.md#apiKeyId)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




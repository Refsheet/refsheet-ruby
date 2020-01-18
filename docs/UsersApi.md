# Refsheet::UsersApi

All URIs are relative to *https://http://dev1.refsheet.net/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](UsersApi.md#find) | **GET** /users/{id} | Retrieve User by ID
[**lookup**](UsersApi.md#lookup) | **GET** /users/lookup/{username} | Retrieve User by Username


# **find**
> InlineResponse200 find(id)

Retrieve User by ID

Finds a user by ID. The ID supplied should be the hexadecimal user GUID, not the username. To find a user by username, use `/users/lookup/{id}` 

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
  #Retrieve User by ID
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



# **lookup**
> InlineResponse200 lookup(username)

Retrieve User by Username

Finds a user by Username. This operation is not case sensitive. Please consider using `/users/{id}` directly if possible. 

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

username = "username_example" # String | Username of the user to find


begin
  #Retrieve User by Username
  result = api_instance.lookup(username)
  p result
rescue Refsheet::ApiError => e
  puts "Exception when calling UsersApi->lookup: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username of the user to find | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[apiKeySecret](../README.md#apiKeySecret), [apiKeyId](../README.md#apiKeyId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




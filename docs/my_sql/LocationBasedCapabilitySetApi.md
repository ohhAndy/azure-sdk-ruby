# AzureRest::LocationBasedCapabilitySetApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**location_based_capability_set_get**](LocationBasedCapabilitySetApi.md#location_based_capability_set_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/locations/{locationName}/capabilitySets/{capabilitySetName} |  |
| [**location_based_capability_set_list**](LocationBasedCapabilitySetApi.md#location_based_capability_set_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/locations/{locationName}/capabilitySets |  |


## location_based_capability_set_get

> <Capability> location_based_capability_set_get(api_version, subscription_id, location_name, capability_set_name)



Get capabilities at specified location in a given subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LocationBasedCapabilitySetApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.
capability_set_name = 'capability_set_name_example' # String | Name of capability set

begin
  
  result = api_instance.location_based_capability_set_get(api_version, subscription_id, location_name, capability_set_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LocationBasedCapabilitySetApi->location_based_capability_set_get: #{e}"
end
```

#### Using the location_based_capability_set_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Capability>, Integer, Hash)> location_based_capability_set_get_with_http_info(api_version, subscription_id, location_name, capability_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.location_based_capability_set_get_with_http_info(api_version, subscription_id, location_name, capability_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Capability>
rescue AzureRest::ApiError => e
  puts "Error when calling LocationBasedCapabilitySetApi->location_based_capability_set_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |
| **capability_set_name** | **String** | Name of capability set | [default to &#39;default&#39;] |

### Return type

[**Capability**](Capability.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## location_based_capability_set_list

> <CapabilitySetsList> location_based_capability_set_list(api_version, subscription_id, location_name)



Get capabilities at specified location in a given subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LocationBasedCapabilitySetApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.

begin
  
  result = api_instance.location_based_capability_set_list(api_version, subscription_id, location_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LocationBasedCapabilitySetApi->location_based_capability_set_list: #{e}"
end
```

#### Using the location_based_capability_set_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapabilitySetsList>, Integer, Hash)> location_based_capability_set_list_with_http_info(api_version, subscription_id, location_name)

```ruby
begin
  
  data, status_code, headers = api_instance.location_based_capability_set_list_with_http_info(api_version, subscription_id, location_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapabilitySetsList>
rescue AzureRest::ApiError => e
  puts "Error when calling LocationBasedCapabilitySetApi->location_based_capability_set_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |

### Return type

[**CapabilitySetsList**](CapabilitySetsList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


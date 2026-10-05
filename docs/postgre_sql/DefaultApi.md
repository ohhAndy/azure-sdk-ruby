# AzureRest::DefaultApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**capabilities_by_location_list**](DefaultApi.md#capabilities_by_location_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.DBforPostgreSQL/locations/{locationName}/capabilities |  |
| [**name_availability_check_globally**](DefaultApi.md#name_availability_check_globally) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.DBforPostgreSQL/checkNameAvailability |  |
| [**name_availability_check_with_location**](DefaultApi.md#name_availability_check_with_location) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.DBforPostgreSQL/locations/{locationName}/checkNameAvailability |  |
| [**private_dns_zone_suffix_get**](DefaultApi.md#private_dns_zone_suffix_get) | **POST** /providers/Microsoft.DBforPostgreSQL/getPrivateDnsZoneSuffix |  |
| [**quota_usages_list**](DefaultApi.md#quota_usages_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.DBforPostgreSQL/locations/{locationName}/resourceType/flexibleServers/usages |  |
| [**virtual_network_subnet_usage_list**](DefaultApi.md#virtual_network_subnet_usage_list) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.DBforPostgreSQL/locations/{locationName}/checkVirtualNetworkSubnetUsage |  |


## capabilities_by_location_list

> <CapabilityList> capabilities_by_location_list(api_version, subscription_id, location_name)



Lists the capabilities available in a given location for a specific subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.

begin
  
  result = api_instance.capabilities_by_location_list(api_version, subscription_id, location_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->capabilities_by_location_list: #{e}"
end
```

#### Using the capabilities_by_location_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapabilityList>, Integer, Hash)> capabilities_by_location_list_with_http_info(api_version, subscription_id, location_name)

```ruby
begin
  
  data, status_code, headers = api_instance.capabilities_by_location_list_with_http_info(api_version, subscription_id, location_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapabilityList>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->capabilities_by_location_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |

### Return type

[**CapabilityList**](CapabilityList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## name_availability_check_globally

> <NameAvailabilityModel> name_availability_check_globally(api_version, subscription_id, parameters)



Checks the validity and availability of the given name, to assign it to a new server or to use it as the base name of a new pair of virtual endpoints.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
parameters = AzureRest::CheckNameAvailabilityRequest.new # CheckNameAvailabilityRequest | The request body

begin
  
  result = api_instance.name_availability_check_globally(api_version, subscription_id, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->name_availability_check_globally: #{e}"
end
```

#### Using the name_availability_check_globally_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NameAvailabilityModel>, Integer, Hash)> name_availability_check_globally_with_http_info(api_version, subscription_id, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.name_availability_check_globally_with_http_info(api_version, subscription_id, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NameAvailabilityModel>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->name_availability_check_globally_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **parameters** | [**CheckNameAvailabilityRequest**](CheckNameAvailabilityRequest.md) | The request body |  |

### Return type

[**NameAvailabilityModel**](NameAvailabilityModel.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## name_availability_check_with_location

> <NameAvailabilityModel> name_availability_check_with_location(api_version, subscription_id, location_name, parameters)



Check the availability of name for resource

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.
parameters = AzureRest::CheckNameAvailabilityRequest.new # CheckNameAvailabilityRequest | The request body

begin
  
  result = api_instance.name_availability_check_with_location(api_version, subscription_id, location_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->name_availability_check_with_location: #{e}"
end
```

#### Using the name_availability_check_with_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NameAvailabilityModel>, Integer, Hash)> name_availability_check_with_location_with_http_info(api_version, subscription_id, location_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.name_availability_check_with_location_with_http_info(api_version, subscription_id, location_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NameAvailabilityModel>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->name_availability_check_with_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |
| **parameters** | [**CheckNameAvailabilityRequest**](CheckNameAvailabilityRequest.md) | The request body |  |

### Return type

[**NameAvailabilityModel**](NameAvailabilityModel.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## private_dns_zone_suffix_get

> String private_dns_zone_suffix_get(api_version)



Gets the private DNS zone suffix.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  result = api_instance.private_dns_zone_suffix_get(api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->private_dns_zone_suffix_get: #{e}"
end
```

#### Using the private_dns_zone_suffix_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> private_dns_zone_suffix_get_with_http_info(api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.private_dns_zone_suffix_get_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->private_dns_zone_suffix_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

**String**

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## quota_usages_list

> <QuotaUsageList> quota_usages_list(api_version, subscription_id, location_name)



Get quota usages at specified location in a given subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.

begin
  
  result = api_instance.quota_usages_list(api_version, subscription_id, location_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->quota_usages_list: #{e}"
end
```

#### Using the quota_usages_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuotaUsageList>, Integer, Hash)> quota_usages_list_with_http_info(api_version, subscription_id, location_name)

```ruby
begin
  
  data, status_code, headers = api_instance.quota_usages_list_with_http_info(api_version, subscription_id, location_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuotaUsageList>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->quota_usages_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |

### Return type

[**QuotaUsageList**](QuotaUsageList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_network_subnet_usage_list

> <VirtualNetworkSubnetUsageModel> virtual_network_subnet_usage_list(api_version, subscription_id, location_name, parameters)



Lists the virtual network subnet usage for a given virtual network.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.
parameters = AzureRest::VirtualNetworkSubnetUsageParameter.new # VirtualNetworkSubnetUsageParameter | The request body

begin
  
  result = api_instance.virtual_network_subnet_usage_list(api_version, subscription_id, location_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->virtual_network_subnet_usage_list: #{e}"
end
```

#### Using the virtual_network_subnet_usage_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetworkSubnetUsageModel>, Integer, Hash)> virtual_network_subnet_usage_list_with_http_info(api_version, subscription_id, location_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_network_subnet_usage_list_with_http_info(api_version, subscription_id, location_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetworkSubnetUsageModel>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->virtual_network_subnet_usage_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |
| **parameters** | [**VirtualNetworkSubnetUsageParameter**](VirtualNetworkSubnetUsageParameter.md) | The request body |  |

### Return type

[**VirtualNetworkSubnetUsageModel**](VirtualNetworkSubnetUsageModel.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


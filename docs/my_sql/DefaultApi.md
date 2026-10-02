# AzureSDK::DefaultApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_name_availability_execute**](DefaultApi.md#check_name_availability_execute) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/locations/{locationName}/checkNameAvailability |  |
| [**check_name_availability_without_location_execute**](DefaultApi.md#check_name_availability_without_location_execute) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/checkNameAvailability |  |
| [**check_virtual_network_subnet_usage_execute**](DefaultApi.md#check_virtual_network_subnet_usage_execute) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/locations/{locationName}/checkVirtualNetworkSubnetUsage |  |
| [**get_private_dns_zone_suffix_execute**](DefaultApi.md#get_private_dns_zone_suffix_execute) | **POST** /providers/Microsoft.DBforMySQL/getPrivateDnsZoneSuffix |  |
| [**location_based_capabilities_list**](DefaultApi.md#location_based_capabilities_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/locations/{locationName}/capabilities |  |
| [**operation_progress_get**](DefaultApi.md#operation_progress_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/locations/{locationName}/operationProgress/{operationId} | Get the operation result for a long running operation. |
| [**operation_results_get**](DefaultApi.md#operation_results_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/locations/{locationName}/operationResults/{operationId} | Get the operation result for a long running operation. |


## check_name_availability_execute

> <NameAvailability> check_name_availability_execute(api_version, subscription_id, location_name, name_availability_request)



Check the availability of name for server

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.
name_availability_request = AzureSDK::NameAvailabilityRequest.new({name: 'name_example'}) # NameAvailabilityRequest | The request body

begin
  
  result = api_instance.check_name_availability_execute(api_version, subscription_id, location_name, name_availability_request)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->check_name_availability_execute: #{e}"
end
```

#### Using the check_name_availability_execute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NameAvailability>, Integer, Hash)> check_name_availability_execute_with_http_info(api_version, subscription_id, location_name, name_availability_request)

```ruby
begin
  
  data, status_code, headers = api_instance.check_name_availability_execute_with_http_info(api_version, subscription_id, location_name, name_availability_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NameAvailability>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->check_name_availability_execute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |
| **name_availability_request** | [**NameAvailabilityRequest**](NameAvailabilityRequest.md) | The request body |  |

### Return type

[**NameAvailability**](NameAvailability.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_name_availability_without_location_execute

> <NameAvailability> check_name_availability_without_location_execute(api_version, subscription_id, name_availability_request)



Check the availability of name for server

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
name_availability_request = AzureSDK::NameAvailabilityRequest.new({name: 'name_example'}) # NameAvailabilityRequest | The request body

begin
  
  result = api_instance.check_name_availability_without_location_execute(api_version, subscription_id, name_availability_request)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->check_name_availability_without_location_execute: #{e}"
end
```

#### Using the check_name_availability_without_location_execute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NameAvailability>, Integer, Hash)> check_name_availability_without_location_execute_with_http_info(api_version, subscription_id, name_availability_request)

```ruby
begin
  
  data, status_code, headers = api_instance.check_name_availability_without_location_execute_with_http_info(api_version, subscription_id, name_availability_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NameAvailability>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->check_name_availability_without_location_execute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **name_availability_request** | [**NameAvailabilityRequest**](NameAvailabilityRequest.md) | The request body |  |

### Return type

[**NameAvailability**](NameAvailability.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_virtual_network_subnet_usage_execute

> <VirtualNetworkSubnetUsageResult> check_virtual_network_subnet_usage_execute(api_version, subscription_id, location_name, parameters)



Get virtual network subnet usage for a given vNet resource id.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.
parameters = AzureSDK::VirtualNetworkSubnetUsageParameter.new # VirtualNetworkSubnetUsageParameter | The request body

begin
  
  result = api_instance.check_virtual_network_subnet_usage_execute(api_version, subscription_id, location_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->check_virtual_network_subnet_usage_execute: #{e}"
end
```

#### Using the check_virtual_network_subnet_usage_execute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetworkSubnetUsageResult>, Integer, Hash)> check_virtual_network_subnet_usage_execute_with_http_info(api_version, subscription_id, location_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.check_virtual_network_subnet_usage_execute_with_http_info(api_version, subscription_id, location_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetworkSubnetUsageResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->check_virtual_network_subnet_usage_execute_with_http_info: #{e}"
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

[**VirtualNetworkSubnetUsageResult**](VirtualNetworkSubnetUsageResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_private_dns_zone_suffix_execute

> <GetPrivateDnsZoneSuffixResponse> get_private_dns_zone_suffix_execute(api_version)



Get private DNS zone suffix in the cloud.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  result = api_instance.get_private_dns_zone_suffix_execute(api_version)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->get_private_dns_zone_suffix_execute: #{e}"
end
```

#### Using the get_private_dns_zone_suffix_execute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPrivateDnsZoneSuffixResponse>, Integer, Hash)> get_private_dns_zone_suffix_execute_with_http_info(api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.get_private_dns_zone_suffix_execute_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPrivateDnsZoneSuffixResponse>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->get_private_dns_zone_suffix_execute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

[**GetPrivateDnsZoneSuffixResponse**](GetPrivateDnsZoneSuffixResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## location_based_capabilities_list

> <CapabilitiesListResult> location_based_capabilities_list(api_version, subscription_id, location_name)



Get capabilities at specified location in a given subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.

begin
  
  result = api_instance.location_based_capabilities_list(api_version, subscription_id, location_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->location_based_capabilities_list: #{e}"
end
```

#### Using the location_based_capabilities_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapabilitiesListResult>, Integer, Hash)> location_based_capabilities_list_with_http_info(api_version, subscription_id, location_name)

```ruby
begin
  
  data, status_code, headers = api_instance.location_based_capabilities_list_with_http_info(api_version, subscription_id, location_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapabilitiesListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->location_based_capabilities_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |

### Return type

[**CapabilitiesListResult**](CapabilitiesListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## operation_progress_get

> <OperationProgressResult> operation_progress_get(api_version, subscription_id, location_name, operation_id)

Get the operation result for a long running operation.

Get the operation result for a long running operation.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.
operation_id = 'operation_id_example' # String | The ID of an ongoing async operation.

begin
  # Get the operation result for a long running operation.
  result = api_instance.operation_progress_get(api_version, subscription_id, location_name, operation_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->operation_progress_get: #{e}"
end
```

#### Using the operation_progress_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OperationProgressResult>, Integer, Hash)> operation_progress_get_with_http_info(api_version, subscription_id, location_name, operation_id)

```ruby
begin
  # Get the operation result for a long running operation.
  data, status_code, headers = api_instance.operation_progress_get_with_http_info(api_version, subscription_id, location_name, operation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OperationProgressResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->operation_progress_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |
| **operation_id** | **String** | The ID of an ongoing async operation. |  |

### Return type

[**OperationProgressResult**](OperationProgressResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## operation_results_get

> <OperationStatusExtendedResult> operation_results_get(api_version, subscription_id, location_name, operation_id)

Get the operation result for a long running operation.

Get the operation result for a long running operation.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location_name = 'location_name_example' # String | The name of the location.
operation_id = 'operation_id_example' # String | The ID of an ongoing async operation.

begin
  # Get the operation result for a long running operation.
  result = api_instance.operation_results_get(api_version, subscription_id, location_name, operation_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->operation_results_get: #{e}"
end
```

#### Using the operation_results_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OperationStatusExtendedResult>, Integer, Hash)> operation_results_get_with_http_info(api_version, subscription_id, location_name, operation_id)

```ruby
begin
  # Get the operation result for a long running operation.
  data, status_code, headers = api_instance.operation_results_get_with_http_info(api_version, subscription_id, location_name, operation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OperationStatusExtendedResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->operation_results_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location_name** | **String** | The name of the location. |  |
| **operation_id** | **String** | The ID of an ongoing async operation. |  |

### Return type

[**OperationStatusExtendedResult**](OperationStatusExtendedResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


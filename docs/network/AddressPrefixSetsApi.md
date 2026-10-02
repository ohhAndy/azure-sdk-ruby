# AzureSDK::AddressPrefixSetsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**address_prefix_sets_create_or_update**](AddressPrefixSetsApi.md#address_prefix_sets_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups/{applicationSecurityGroupName}/addressPrefixSets/{addressPrefixSetName} |  |
| [**address_prefix_sets_delete**](AddressPrefixSetsApi.md#address_prefix_sets_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups/{applicationSecurityGroupName}/addressPrefixSets/{addressPrefixSetName} |  |
| [**address_prefix_sets_get**](AddressPrefixSetsApi.md#address_prefix_sets_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups/{applicationSecurityGroupName}/addressPrefixSets/{addressPrefixSetName} |  |
| [**address_prefix_sets_list**](AddressPrefixSetsApi.md#address_prefix_sets_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups/{applicationSecurityGroupName}/addressPrefixSets |  |


## address_prefix_sets_create_or_update

> <AddressPrefixSet> address_prefix_sets_create_or_update(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name, resource)



Creates or updates an address prefix set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AddressPrefixSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
application_security_group_name = 'application_security_group_name_example' # String | The name of the application security group.
address_prefix_set_name = 'address_prefix_set_name_example' # String | The name of the address prefix set.
resource = AzureSDK::AddressPrefixSet.new # AddressPrefixSet | Parameters supplied to the create or update address prefix set operation.

begin
  
  result = api_instance.address_prefix_sets_create_or_update(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name, resource)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AddressPrefixSetsApi->address_prefix_sets_create_or_update: #{e}"
end
```

#### Using the address_prefix_sets_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressPrefixSet>, Integer, Hash)> address_prefix_sets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name, resource)

```ruby
begin
  
  data, status_code, headers = api_instance.address_prefix_sets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name, resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressPrefixSet>
rescue AzureSDK::ApiError => e
  puts "Error when calling AddressPrefixSetsApi->address_prefix_sets_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **application_security_group_name** | **String** | The name of the application security group. |  |
| **address_prefix_set_name** | **String** | The name of the address prefix set. |  |
| **resource** | [**AddressPrefixSet**](AddressPrefixSet.md) | Parameters supplied to the create or update address prefix set operation. |  |

### Return type

[**AddressPrefixSet**](AddressPrefixSet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## address_prefix_sets_delete

> address_prefix_sets_delete(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name)



Deletes the specified address prefix set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AddressPrefixSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
application_security_group_name = 'application_security_group_name_example' # String | The name of the application security group.
address_prefix_set_name = 'address_prefix_set_name_example' # String | The name of the address prefix set.

begin
  
  api_instance.address_prefix_sets_delete(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling AddressPrefixSetsApi->address_prefix_sets_delete: #{e}"
end
```

#### Using the address_prefix_sets_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> address_prefix_sets_delete_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.address_prefix_sets_delete_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AddressPrefixSetsApi->address_prefix_sets_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **application_security_group_name** | **String** | The name of the application security group. |  |
| **address_prefix_set_name** | **String** | The name of the address prefix set. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## address_prefix_sets_get

> <AddressPrefixSet> address_prefix_sets_get(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name)



Gets the specified address prefix set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AddressPrefixSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
application_security_group_name = 'application_security_group_name_example' # String | The name of the application security group.
address_prefix_set_name = 'address_prefix_set_name_example' # String | The name of the address prefix set.

begin
  
  result = api_instance.address_prefix_sets_get(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AddressPrefixSetsApi->address_prefix_sets_get: #{e}"
end
```

#### Using the address_prefix_sets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressPrefixSet>, Integer, Hash)> address_prefix_sets_get_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.address_prefix_sets_get_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name, address_prefix_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressPrefixSet>
rescue AzureSDK::ApiError => e
  puts "Error when calling AddressPrefixSetsApi->address_prefix_sets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **application_security_group_name** | **String** | The name of the application security group. |  |
| **address_prefix_set_name** | **String** | The name of the address prefix set. |  |

### Return type

[**AddressPrefixSet**](AddressPrefixSet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## address_prefix_sets_list

> <AddressPrefixSetListResult> address_prefix_sets_list(api_version, subscription_id, resource_group_name, application_security_group_name)



Gets all address prefix sets in an application security group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AddressPrefixSetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
application_security_group_name = 'application_security_group_name_example' # String | The name of the application security group.

begin
  
  result = api_instance.address_prefix_sets_list(api_version, subscription_id, resource_group_name, application_security_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AddressPrefixSetsApi->address_prefix_sets_list: #{e}"
end
```

#### Using the address_prefix_sets_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressPrefixSetListResult>, Integer, Hash)> address_prefix_sets_list_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.address_prefix_sets_list_with_http_info(api_version, subscription_id, resource_group_name, application_security_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressPrefixSetListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling AddressPrefixSetsApi->address_prefix_sets_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **application_security_group_name** | **String** | The name of the application security group. |  |

### Return type

[**AddressPrefixSetListResult**](AddressPrefixSetListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


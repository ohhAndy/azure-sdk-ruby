# AzureRest::DedicatedHostsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dedicated_hosts_create_or_update**](DedicatedHostsApi.md#dedicated_hosts_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}/hosts/{hostName} |  |
| [**dedicated_hosts_delete**](DedicatedHostsApi.md#dedicated_hosts_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}/hosts/{hostName} |  |
| [**dedicated_hosts_get**](DedicatedHostsApi.md#dedicated_hosts_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}/hosts/{hostName} |  |
| [**dedicated_hosts_update**](DedicatedHostsApi.md#dedicated_hosts_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}/hosts/{hostName} |  |


## dedicated_hosts_create_or_update

> <DedicatedHost> dedicated_hosts_create_or_update(api_version, subscription_id, resource_group_name, host_group_name, host_name, parameters)



Create or update a dedicated host .

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
host_name = 'host_name_example' # String | The name of the dedicated host.
parameters = AzureRest::DedicatedHost.new({location: 'location_example', sku: AzureRest::Sku.new}) # DedicatedHost | Parameters supplied to the Create Dedicated Host.

begin
  
  result = api_instance.dedicated_hosts_create_or_update(api_version, subscription_id, resource_group_name, host_group_name, host_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostsApi->dedicated_hosts_create_or_update: #{e}"
end
```

#### Using the dedicated_hosts_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHost>, Integer, Hash)> dedicated_hosts_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_hosts_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHost>
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostsApi->dedicated_hosts_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **host_group_name** | **String** | The name of the dedicated host group. |  |
| **host_name** | **String** | The name of the dedicated host. |  |
| **parameters** | [**DedicatedHost**](DedicatedHost.md) | Parameters supplied to the Create Dedicated Host. |  |

### Return type

[**DedicatedHost**](DedicatedHost.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## dedicated_hosts_delete

> dedicated_hosts_delete(api_version, subscription_id, resource_group_name, host_group_name, host_name)



Delete a dedicated host.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
host_name = 'host_name_example' # String | The name of the dedicated host.

begin
  
  api_instance.dedicated_hosts_delete(api_version, subscription_id, resource_group_name, host_group_name, host_name)
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostsApi->dedicated_hosts_delete: #{e}"
end
```

#### Using the dedicated_hosts_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dedicated_hosts_delete_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_hosts_delete_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostsApi->dedicated_hosts_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **host_group_name** | **String** | The name of the dedicated host group. |  |
| **host_name** | **String** | The name of the dedicated host. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dedicated_hosts_get

> <DedicatedHost> dedicated_hosts_get(api_version, subscription_id, resource_group_name, host_group_name, host_name, opts)



Retrieves information about a dedicated host.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
host_name = 'host_name_example' # String | The name of the dedicated host.
opts = {
  expand: 'instanceView' # String | The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the dedicated host. 'UserData' is not supported for dedicated host.
}

begin
  
  result = api_instance.dedicated_hosts_get(api_version, subscription_id, resource_group_name, host_group_name, host_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostsApi->dedicated_hosts_get: #{e}"
end
```

#### Using the dedicated_hosts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHost>, Integer, Hash)> dedicated_hosts_get_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_hosts_get_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHost>
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostsApi->dedicated_hosts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **host_group_name** | **String** | The name of the dedicated host group. |  |
| **host_name** | **String** | The name of the dedicated host. |  |
| **expand** | **String** | The expand expression to apply on the operation. &#39;InstanceView&#39; will retrieve the list of instance views of the dedicated host. &#39;UserData&#39; is not supported for dedicated host. | [optional] |

### Return type

[**DedicatedHost**](DedicatedHost.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dedicated_hosts_update

> <DedicatedHost> dedicated_hosts_update(api_version, subscription_id, resource_group_name, host_group_name, host_name, parameters)



Update a dedicated host .

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DedicatedHostsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
host_name = 'host_name_example' # String | The name of the dedicated host.
parameters = AzureRest::DedicatedHostUpdate.new # DedicatedHostUpdate | Parameters supplied to the Update Dedicated Host operation.

begin
  
  result = api_instance.dedicated_hosts_update(api_version, subscription_id, resource_group_name, host_group_name, host_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostsApi->dedicated_hosts_update: #{e}"
end
```

#### Using the dedicated_hosts_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHost>, Integer, Hash)> dedicated_hosts_update_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_hosts_update_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHost>
rescue AzureRest::ApiError => e
  puts "Error when calling DedicatedHostsApi->dedicated_hosts_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **host_group_name** | **String** | The name of the dedicated host group. |  |
| **host_name** | **String** | The name of the dedicated host. |  |
| **parameters** | [**DedicatedHostUpdate**](DedicatedHostUpdate.md) | Parameters supplied to the Update Dedicated Host operation. |  |

### Return type

[**DedicatedHost**](DedicatedHost.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# AzureSDK::DedicatedHostApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dedicated_hosts_list_available_sizes**](DedicatedHostApi.md#dedicated_hosts_list_available_sizes) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}/hosts/{hostName}/hostSizes |  |
| [**dedicated_hosts_list_by_host_group**](DedicatedHostApi.md#dedicated_hosts_list_by_host_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}/hosts |  |
| [**dedicated_hosts_redeploy**](DedicatedHostApi.md#dedicated_hosts_redeploy) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}/hosts/{hostName}/redeploy |  |
| [**dedicated_hosts_restart**](DedicatedHostApi.md#dedicated_hosts_restart) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}/hosts/{hostName}/restart |  |


## dedicated_hosts_list_available_sizes

> <DedicatedHostSizeListResult> dedicated_hosts_list_available_sizes(api_version, subscription_id, resource_group_name, host_group_name, host_name)



Lists all available dedicated host sizes to which the specified dedicated host can be resized. NOTE: The dedicated host sizes provided can be used to only scale up the existing dedicated host.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DedicatedHostApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
host_name = 'host_name_example' # String | The name of the dedicated host.

begin
  
  result = api_instance.dedicated_hosts_list_available_sizes(api_version, subscription_id, resource_group_name, host_group_name, host_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DedicatedHostApi->dedicated_hosts_list_available_sizes: #{e}"
end
```

#### Using the dedicated_hosts_list_available_sizes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHostSizeListResult>, Integer, Hash)> dedicated_hosts_list_available_sizes_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_hosts_list_available_sizes_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHostSizeListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DedicatedHostApi->dedicated_hosts_list_available_sizes_with_http_info: #{e}"
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

[**DedicatedHostSizeListResult**](DedicatedHostSizeListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dedicated_hosts_list_by_host_group

> <DedicatedHostListResult> dedicated_hosts_list_by_host_group(api_version, subscription_id, resource_group_name, host_group_name)



Lists all of the dedicated hosts in the specified dedicated host group. Use the nextLink property in the response to get the next page of dedicated hosts.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DedicatedHostApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.

begin
  
  result = api_instance.dedicated_hosts_list_by_host_group(api_version, subscription_id, resource_group_name, host_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DedicatedHostApi->dedicated_hosts_list_by_host_group: #{e}"
end
```

#### Using the dedicated_hosts_list_by_host_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DedicatedHostListResult>, Integer, Hash)> dedicated_hosts_list_by_host_group_with_http_info(api_version, subscription_id, resource_group_name, host_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_hosts_list_by_host_group_with_http_info(api_version, subscription_id, resource_group_name, host_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DedicatedHostListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DedicatedHostApi->dedicated_hosts_list_by_host_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **host_group_name** | **String** | The name of the dedicated host group. |  |

### Return type

[**DedicatedHostListResult**](DedicatedHostListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dedicated_hosts_redeploy

> dedicated_hosts_redeploy(api_version, subscription_id, resource_group_name, host_group_name, host_name)



Redeploy the dedicated host. The operation will complete successfully once the dedicated host has migrated to a new node and is running. To determine the health of VMs deployed on the dedicated host after the redeploy check the Resource Health Center in the Azure Portal. Please refer to https://docs.microsoft.com/azure/service-health/resource-health-overview for more details.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DedicatedHostApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
host_name = 'host_name_example' # String | The name of the dedicated host.

begin
  
  api_instance.dedicated_hosts_redeploy(api_version, subscription_id, resource_group_name, host_group_name, host_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling DedicatedHostApi->dedicated_hosts_redeploy: #{e}"
end
```

#### Using the dedicated_hosts_redeploy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dedicated_hosts_redeploy_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_hosts_redeploy_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DedicatedHostApi->dedicated_hosts_redeploy_with_http_info: #{e}"
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


## dedicated_hosts_restart

> dedicated_hosts_restart(api_version, subscription_id, resource_group_name, host_group_name, host_name)



Restart the dedicated host. The operation will complete successfully once the dedicated host has restarted and is running. To determine the health of VMs deployed on the dedicated host after the restart check the Resource Health Center in the Azure Portal. Please refer to https://docs.microsoft.com/azure/service-health/resource-health-overview for more details.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DedicatedHostApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
host_group_name = 'host_group_name_example' # String | The name of the dedicated host group.
host_name = 'host_name_example' # String | The name of the dedicated host.

begin
  
  api_instance.dedicated_hosts_restart(api_version, subscription_id, resource_group_name, host_group_name, host_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling DedicatedHostApi->dedicated_hosts_restart: #{e}"
end
```

#### Using the dedicated_hosts_restart_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dedicated_hosts_restart_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name)

```ruby
begin
  
  data, status_code, headers = api_instance.dedicated_hosts_restart_with_http_info(api_version, subscription_id, resource_group_name, host_group_name, host_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DedicatedHostApi->dedicated_hosts_restart_with_http_info: #{e}"
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


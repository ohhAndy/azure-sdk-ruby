# AzureRest::PrivateLinkResourcesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_link_resources_list**](PrivateLinkResourcesApi.md#private_link_resources_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/privateLinkResources | Gets a list of private link resources in the specified managed cluster. |


## private_link_resources_list

> <PrivateLinkResourcesListResult> private_link_resources_list(api_version, subscription_id, resource_group_name, resource_name)

Gets a list of private link resources in the specified managed cluster.

To learn more about private clusters, see: https://docs.microsoft.com/azure/aks/private-clusters

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::PrivateLinkResourcesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  # Gets a list of private link resources in the specified managed cluster.
  result = api_instance.private_link_resources_list(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateLinkResourcesApi->private_link_resources_list: #{e}"
end
```

#### Using the private_link_resources_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkResourcesListResult>, Integer, Hash)> private_link_resources_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  # Gets a list of private link resources in the specified managed cluster.
  data, status_code, headers = api_instance.private_link_resources_list_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkResourcesListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling PrivateLinkResourcesApi->private_link_resources_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |

### Return type

[**PrivateLinkResourcesListResult**](PrivateLinkResourcesListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


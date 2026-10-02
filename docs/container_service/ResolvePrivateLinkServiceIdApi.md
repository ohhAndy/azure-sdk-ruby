# AzureSDK::ResolvePrivateLinkServiceIdApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**resolve_private_link_service_id_post**](ResolvePrivateLinkServiceIdApi.md#resolve_private_link_service_id_post) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/resolvePrivateLinkServiceId |  |


## resolve_private_link_service_id_post

> <PrivateLinkResource> resolve_private_link_service_id_post(api_version, subscription_id, resource_group_name, resource_name, parameters)



Gets the private link service ID for the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ResolvePrivateLinkServiceIdApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
parameters = AzureSDK::PrivateLinkResource.new # PrivateLinkResource | Parameters required in order to resolve a private link service ID.

begin
  
  result = api_instance.resolve_private_link_service_id_post(api_version, subscription_id, resource_group_name, resource_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ResolvePrivateLinkServiceIdApi->resolve_private_link_service_id_post: #{e}"
end
```

#### Using the resolve_private_link_service_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkResource>, Integer, Hash)> resolve_private_link_service_id_post_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.resolve_private_link_service_id_post_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkResource>
rescue AzureSDK::ApiError => e
  puts "Error when calling ResolvePrivateLinkServiceIdApi->resolve_private_link_service_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **parameters** | [**PrivateLinkResource**](PrivateLinkResource.md) | Parameters required in order to resolve a private link service ID. |  |

### Return type

[**PrivateLinkResource**](PrivateLinkResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


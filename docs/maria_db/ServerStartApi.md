# AzureSDK::ServerStartApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**servers_start**](ServerStartApi.md#servers_start) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMariaDB/servers/{serverName}/start |  |


## servers_start

> servers_start(api_version, subscription_id, resource_group_name, server_name)



Starts a stopped server.

### Examples

```ruby
require 'time'
require 'azure_sdk'

api_instance = AzureSDK::ServerStartApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  api_instance.servers_start(api_version, subscription_id, resource_group_name, server_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ServerStartApi->servers_start: #{e}"
end
```

#### Using the servers_start_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> servers_start_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.servers_start_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ServerStartApi->servers_start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


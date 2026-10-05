# AzureRest::InterconnectBlocksApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**interconnect_blocks_create_or_update**](InterconnectBlocksApi.md#interconnect_blocks_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/interconnectBlocks/{interconnectBlockName} |  |
| [**interconnect_blocks_delete**](InterconnectBlocksApi.md#interconnect_blocks_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/interconnectBlocks/{interconnectBlockName} |  |
| [**interconnect_blocks_get**](InterconnectBlocksApi.md#interconnect_blocks_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/interconnectBlocks/{interconnectBlockName} |  |
| [**interconnect_blocks_list_by_resource_group**](InterconnectBlocksApi.md#interconnect_blocks_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/interconnectBlocks |  |
| [**interconnect_blocks_list_by_subscription**](InterconnectBlocksApi.md#interconnect_blocks_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/interconnectBlocks |  |
| [**interconnect_blocks_update**](InterconnectBlocksApi.md#interconnect_blocks_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/interconnectBlocks/{interconnectBlockName} |  |


## interconnect_blocks_create_or_update

> <InterconnectBlock> interconnect_blocks_create_or_update(api_version, subscription_id, resource_group_name, interconnect_block_name, resource)



Creates or updates an Interconnect Block. When updating an Interconnect Block, only tags and sku.capacity may be modified.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::InterconnectBlocksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
interconnect_block_name = 'interconnect_block_name_example' # String | The name of the Interconnect Block.
resource = AzureRest::InterconnectBlock.new({location: 'location_example', sku: AzureRest::Sku.new}) # InterconnectBlock | Parameters supplied to the Create Interconnect Block.

begin
  
  result = api_instance.interconnect_blocks_create_or_update(api_version, subscription_id, resource_group_name, interconnect_block_name, resource)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_create_or_update: #{e}"
end
```

#### Using the interconnect_blocks_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InterconnectBlock>, Integer, Hash)> interconnect_blocks_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, interconnect_block_name, resource)

```ruby
begin
  
  data, status_code, headers = api_instance.interconnect_blocks_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, interconnect_block_name, resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InterconnectBlock>
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **interconnect_block_name** | **String** | The name of the Interconnect Block. |  |
| **resource** | [**InterconnectBlock**](InterconnectBlock.md) | Parameters supplied to the Create Interconnect Block. |  |

### Return type

[**InterconnectBlock**](InterconnectBlock.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## interconnect_blocks_delete

> interconnect_blocks_delete(api_version, subscription_id, resource_group_name, interconnect_block_name)



Deletes an Interconnect Block. The operation is only allowed when there are no virtual machines or VMSS VM instances associated with the Interconnect Block.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::InterconnectBlocksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
interconnect_block_name = 'interconnect_block_name_example' # String | The name of the Interconnect Block.

begin
  
  api_instance.interconnect_blocks_delete(api_version, subscription_id, resource_group_name, interconnect_block_name)
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_delete: #{e}"
end
```

#### Using the interconnect_blocks_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> interconnect_blocks_delete_with_http_info(api_version, subscription_id, resource_group_name, interconnect_block_name)

```ruby
begin
  
  data, status_code, headers = api_instance.interconnect_blocks_delete_with_http_info(api_version, subscription_id, resource_group_name, interconnect_block_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **interconnect_block_name** | **String** | The name of the Interconnect Block. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## interconnect_blocks_get

> <InterconnectBlock> interconnect_blocks_get(api_version, subscription_id, resource_group_name, interconnect_block_name, opts)



Retrieves information about an Interconnect Block.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::InterconnectBlocksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
interconnect_block_name = 'interconnect_block_name_example' # String | The name of the Interconnect Block.
opts = {
  expand: 'instanceView' # String | The expand expression to apply on the operation. 'instanceView' retrieves a snapshot of the runtime properties of the Interconnect Block that is managed by the platform and can change outside of control plane operations.
}

begin
  
  result = api_instance.interconnect_blocks_get(api_version, subscription_id, resource_group_name, interconnect_block_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_get: #{e}"
end
```

#### Using the interconnect_blocks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InterconnectBlock>, Integer, Hash)> interconnect_blocks_get_with_http_info(api_version, subscription_id, resource_group_name, interconnect_block_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.interconnect_blocks_get_with_http_info(api_version, subscription_id, resource_group_name, interconnect_block_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InterconnectBlock>
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **interconnect_block_name** | **String** | The name of the Interconnect Block. |  |
| **expand** | **String** | The expand expression to apply on the operation. &#39;instanceView&#39; retrieves a snapshot of the runtime properties of the Interconnect Block that is managed by the platform and can change outside of control plane operations. | [optional] |

### Return type

[**InterconnectBlock**](InterconnectBlock.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## interconnect_blocks_list_by_resource_group

> <InterconnectBlockListResult> interconnect_blocks_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all of the Interconnect Blocks in the specified resource group. Use the nextLink property in the response to get the next page of Interconnect Blocks.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::InterconnectBlocksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.interconnect_blocks_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_list_by_resource_group: #{e}"
end
```

#### Using the interconnect_blocks_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InterconnectBlockListResult>, Integer, Hash)> interconnect_blocks_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.interconnect_blocks_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InterconnectBlockListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**InterconnectBlockListResult**](InterconnectBlockListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## interconnect_blocks_list_by_subscription

> <InterconnectBlockListResult> interconnect_blocks_list_by_subscription(api_version, subscription_id)



Lists all of the Interconnect Blocks in the subscription. Use the nextLink property in the response to get the next page of Interconnect Blocks.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::InterconnectBlocksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.interconnect_blocks_list_by_subscription(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_list_by_subscription: #{e}"
end
```

#### Using the interconnect_blocks_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InterconnectBlockListResult>, Integer, Hash)> interconnect_blocks_list_by_subscription_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.interconnect_blocks_list_by_subscription_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InterconnectBlockListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**InterconnectBlockListResult**](InterconnectBlockListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## interconnect_blocks_update

> <InterconnectBlock> interconnect_blocks_update(api_version, subscription_id, resource_group_name, interconnect_block_name, properties)



Updates an Interconnect Block. When updating an Interconnect Block, only tags and sku.capacity may be modified.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::InterconnectBlocksApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
interconnect_block_name = 'interconnect_block_name_example' # String | The name of the Interconnect Block.
properties = AzureRest::InterconnectBlockUpdate.new # InterconnectBlockUpdate | Parameters supplied to the Update Interconnect Block operation.

begin
  
  result = api_instance.interconnect_blocks_update(api_version, subscription_id, resource_group_name, interconnect_block_name, properties)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_update: #{e}"
end
```

#### Using the interconnect_blocks_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InterconnectBlock>, Integer, Hash)> interconnect_blocks_update_with_http_info(api_version, subscription_id, resource_group_name, interconnect_block_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.interconnect_blocks_update_with_http_info(api_version, subscription_id, resource_group_name, interconnect_block_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InterconnectBlock>
rescue AzureRest::ApiError => e
  puts "Error when calling InterconnectBlocksApi->interconnect_blocks_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **interconnect_block_name** | **String** | The name of the Interconnect Block. |  |
| **properties** | [**InterconnectBlockUpdate**](InterconnectBlockUpdate.md) | Parameters supplied to the Update Interconnect Block operation. |  |

### Return type

[**InterconnectBlock**](InterconnectBlock.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


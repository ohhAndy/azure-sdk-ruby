# AzureSDK::StorageQueuesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**queue_create**](StorageQueuesApi.md#queue_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices/default/queues/{queueName} |  |
| [**queue_delete**](StorageQueuesApi.md#queue_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices/default/queues/{queueName} |  |
| [**queue_get**](StorageQueuesApi.md#queue_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices/default/queues/{queueName} |  |
| [**queue_update**](StorageQueuesApi.md#queue_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices/default/queues/{queueName} |  |


## queue_create

> <StorageQueue> queue_create(api_version, subscription_id, resource_group_name, account_name, queue_name, queue)



Creates a new queue with the specified queue name, under the specified account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::StorageQueuesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
queue_name = 'queue_name_example' # String | A queue name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of lowercase alphanumeric and dash(-) characters only, it should begin and end with an alphanumeric character and it cannot have two consecutive dash(-) characters.
queue = AzureSDK::StorageQueue.new # StorageQueue | Queue properties and metadata to be created with

begin
  
  result = api_instance.queue_create(api_version, subscription_id, resource_group_name, account_name, queue_name, queue)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageQueuesApi->queue_create: #{e}"
end
```

#### Using the queue_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageQueue>, Integer, Hash)> queue_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, queue_name, queue)

```ruby
begin
  
  data, status_code, headers = api_instance.queue_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, queue_name, queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageQueue>
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageQueuesApi->queue_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **queue_name** | **String** | A queue name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of lowercase alphanumeric and dash(-) characters only, it should begin and end with an alphanumeric character and it cannot have two consecutive dash(-) characters. |  |
| **queue** | [**StorageQueue**](StorageQueue.md) | Queue properties and metadata to be created with |  |

### Return type

[**StorageQueue**](StorageQueue.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## queue_delete

> queue_delete(api_version, subscription_id, resource_group_name, account_name, queue_name)



Deletes the queue with the specified queue name, under the specified account if it exists.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::StorageQueuesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
queue_name = 'queue_name_example' # String | A queue name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of lowercase alphanumeric and dash(-) characters only, it should begin and end with an alphanumeric character and it cannot have two consecutive dash(-) characters.

begin
  
  api_instance.queue_delete(api_version, subscription_id, resource_group_name, account_name, queue_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageQueuesApi->queue_delete: #{e}"
end
```

#### Using the queue_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> queue_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, queue_name)

```ruby
begin
  
  data, status_code, headers = api_instance.queue_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, queue_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageQueuesApi->queue_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **queue_name** | **String** | A queue name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of lowercase alphanumeric and dash(-) characters only, it should begin and end with an alphanumeric character and it cannot have two consecutive dash(-) characters. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## queue_get

> <StorageQueue> queue_get(api_version, subscription_id, resource_group_name, account_name, queue_name)



Gets the queue with the specified queue name, under the specified account if it exists.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::StorageQueuesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
queue_name = 'queue_name_example' # String | A queue name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of lowercase alphanumeric and dash(-) characters only, it should begin and end with an alphanumeric character and it cannot have two consecutive dash(-) characters.

begin
  
  result = api_instance.queue_get(api_version, subscription_id, resource_group_name, account_name, queue_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageQueuesApi->queue_get: #{e}"
end
```

#### Using the queue_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageQueue>, Integer, Hash)> queue_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, queue_name)

```ruby
begin
  
  data, status_code, headers = api_instance.queue_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, queue_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageQueue>
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageQueuesApi->queue_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **queue_name** | **String** | A queue name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of lowercase alphanumeric and dash(-) characters only, it should begin and end with an alphanumeric character and it cannot have two consecutive dash(-) characters. |  |

### Return type

[**StorageQueue**](StorageQueue.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## queue_update

> <StorageQueue> queue_update(api_version, subscription_id, resource_group_name, account_name, queue_name, queue)



Creates a new queue with the specified queue name, under the specified account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::StorageQueuesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
queue_name = 'queue_name_example' # String | A queue name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of lowercase alphanumeric and dash(-) characters only, it should begin and end with an alphanumeric character and it cannot have two consecutive dash(-) characters.
queue = AzureSDK::StorageQueue.new # StorageQueue | Queue properties and metadata to be created with

begin
  
  result = api_instance.queue_update(api_version, subscription_id, resource_group_name, account_name, queue_name, queue)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageQueuesApi->queue_update: #{e}"
end
```

#### Using the queue_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageQueue>, Integer, Hash)> queue_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, queue_name, queue)

```ruby
begin
  
  data, status_code, headers = api_instance.queue_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, queue_name, queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageQueue>
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageQueuesApi->queue_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **queue_name** | **String** | A queue name must be unique within a storage account and must be between 3 and 63 characters.The name must comprise of lowercase alphanumeric and dash(-) characters only, it should begin and end with an alphanumeric character and it cannot have two consecutive dash(-) characters. |  |
| **queue** | [**StorageQueue**](StorageQueue.md) | Queue properties and metadata to be created with |  |

### Return type

[**StorageQueue**](StorageQueue.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


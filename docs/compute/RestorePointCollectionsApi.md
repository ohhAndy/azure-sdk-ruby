# AzureRest::RestorePointCollectionsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**restore_point_collections_create_or_update**](RestorePointCollectionsApi.md#restore_point_collections_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections/{restorePointCollectionName} |  |
| [**restore_point_collections_delete**](RestorePointCollectionsApi.md#restore_point_collections_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections/{restorePointCollectionName} |  |
| [**restore_point_collections_get**](RestorePointCollectionsApi.md#restore_point_collections_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections/{restorePointCollectionName} |  |
| [**restore_point_collections_list**](RestorePointCollectionsApi.md#restore_point_collections_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections |  |
| [**restore_point_collections_list_all**](RestorePointCollectionsApi.md#restore_point_collections_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/restorePointCollections |  |
| [**restore_point_collections_update**](RestorePointCollectionsApi.md#restore_point_collections_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections/{restorePointCollectionName} |  |


## restore_point_collections_create_or_update

> <RestorePointCollection> restore_point_collections_create_or_update(api_version, subscription_id, resource_group_name, restore_point_collection_name, parameters)



The operation to create or update the restore point collection. Please refer to https://aka.ms/RestorePoints for more details. When updating a restore point collection, only tags may be modified.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RestorePointCollectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
restore_point_collection_name = 'restore_point_collection_name_example' # String | The name of the restore point collection.
parameters = AzureRest::RestorePointCollection.new({location: 'location_example'}) # RestorePointCollection | Parameters supplied to the Create or Update restore point collection operation.

begin
  
  result = api_instance.restore_point_collections_create_or_update(api_version, subscription_id, resource_group_name, restore_point_collection_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_create_or_update: #{e}"
end
```

#### Using the restore_point_collections_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestorePointCollection>, Integer, Hash)> restore_point_collections_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.restore_point_collections_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestorePointCollection>
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **restore_point_collection_name** | **String** | The name of the restore point collection. |  |
| **parameters** | [**RestorePointCollection**](RestorePointCollection.md) | Parameters supplied to the Create or Update restore point collection operation. |  |

### Return type

[**RestorePointCollection**](RestorePointCollection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## restore_point_collections_delete

> restore_point_collections_delete(api_version, subscription_id, resource_group_name, restore_point_collection_name)



The operation to delete the restore point collection. This operation will also delete all the contained restore points.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RestorePointCollectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
restore_point_collection_name = 'restore_point_collection_name_example' # String | The name of the restore point collection.

begin
  
  api_instance.restore_point_collections_delete(api_version, subscription_id, resource_group_name, restore_point_collection_name)
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_delete: #{e}"
end
```

#### Using the restore_point_collections_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> restore_point_collections_delete_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.restore_point_collections_delete_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **restore_point_collection_name** | **String** | The name of the restore point collection. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_point_collections_get

> <RestorePointCollection> restore_point_collections_get(api_version, subscription_id, resource_group_name, restore_point_collection_name, opts)



The operation to get the restore point collection.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RestorePointCollectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
restore_point_collection_name = 'restore_point_collection_name_example' # String | The name of the restore point collection.
opts = {
  expand: 'restorePoints' # String | The expand expression to apply on the operation. If expand=restorePoints, server will return all contained restore points in the restorePointCollection.
}

begin
  
  result = api_instance.restore_point_collections_get(api_version, subscription_id, resource_group_name, restore_point_collection_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_get: #{e}"
end
```

#### Using the restore_point_collections_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestorePointCollection>, Integer, Hash)> restore_point_collections_get_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.restore_point_collections_get_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestorePointCollection>
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **restore_point_collection_name** | **String** | The name of the restore point collection. |  |
| **expand** | **String** | The expand expression to apply on the operation. If expand&#x3D;restorePoints, server will return all contained restore points in the restorePointCollection. | [optional] |

### Return type

[**RestorePointCollection**](RestorePointCollection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_point_collections_list

> <RestorePointCollectionListResult> restore_point_collections_list(api_version, subscription_id, resource_group_name)



Gets the list of restore point collections in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RestorePointCollectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.restore_point_collections_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_list: #{e}"
end
```

#### Using the restore_point_collections_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestorePointCollectionListResult>, Integer, Hash)> restore_point_collections_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.restore_point_collections_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestorePointCollectionListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**RestorePointCollectionListResult**](RestorePointCollectionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_point_collections_list_all

> <RestorePointCollectionListResult> restore_point_collections_list_all(api_version, subscription_id)



Gets the list of restore point collections in the subscription. Use nextLink property in the response to get the next page of restore point collections. Do this till nextLink is not null to fetch all the restore point collections.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RestorePointCollectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.restore_point_collections_list_all(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_list_all: #{e}"
end
```

#### Using the restore_point_collections_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestorePointCollectionListResult>, Integer, Hash)> restore_point_collections_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.restore_point_collections_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestorePointCollectionListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**RestorePointCollectionListResult**](RestorePointCollectionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_point_collections_update

> <RestorePointCollection> restore_point_collections_update(api_version, subscription_id, resource_group_name, restore_point_collection_name, parameters)



The operation to update the restore point collection.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RestorePointCollectionsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
restore_point_collection_name = 'restore_point_collection_name_example' # String | The name of the restore point collection.
parameters = AzureRest::RestorePointCollectionUpdate.new # RestorePointCollectionUpdate | Parameters supplied to the Update restore point collection operation.

begin
  
  result = api_instance.restore_point_collections_update(api_version, subscription_id, resource_group_name, restore_point_collection_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_update: #{e}"
end
```

#### Using the restore_point_collections_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestorePointCollection>, Integer, Hash)> restore_point_collections_update_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.restore_point_collections_update_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestorePointCollection>
rescue AzureRest::ApiError => e
  puts "Error when calling RestorePointCollectionsApi->restore_point_collections_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **restore_point_collection_name** | **String** | The name of the restore point collection. |  |
| **parameters** | [**RestorePointCollectionUpdate**](RestorePointCollectionUpdate.md) | Parameters supplied to the Update restore point collection operation. |  |

### Return type

[**RestorePointCollection**](RestorePointCollection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


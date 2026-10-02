# AzureSDK::DefaultApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**restore_points_create**](DefaultApi.md#restore_points_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections/{restorePointCollectionName}/restorePoints/{restorePointName} |  |
| [**restore_points_delete**](DefaultApi.md#restore_points_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections/{restorePointCollectionName}/restorePoints/{restorePointName} |  |
| [**restore_points_get**](DefaultApi.md#restore_points_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections/{restorePointCollectionName}/restorePoints/{restorePointName} |  |


## restore_points_create

> <RestorePoint> restore_points_create(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name, parameters)



The operation to create the restore point. Updating properties of an existing restore point is not allowed

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
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
restore_point_collection_name = 'restore_point_collection_name_example' # String | The name of the restore point collection.
restore_point_name = 'restore_point_name_example' # String | The name of the restore point.
parameters = AzureSDK::RestorePoint.new # RestorePoint | Parameters supplied to the Create restore point operation.

begin
  
  result = api_instance.restore_points_create(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->restore_points_create: #{e}"
end
```

#### Using the restore_points_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestorePoint>, Integer, Hash)> restore_points_create_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.restore_points_create_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestorePoint>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->restore_points_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **restore_point_collection_name** | **String** | The name of the restore point collection. |  |
| **restore_point_name** | **String** | The name of the restore point. |  |
| **parameters** | [**RestorePoint**](RestorePoint.md) | Parameters supplied to the Create restore point operation. |  |

### Return type

[**RestorePoint**](RestorePoint.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## restore_points_delete

> restore_points_delete(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name)



The operation to delete the restore point.

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
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
restore_point_collection_name = 'restore_point_collection_name_example' # String | The name of the restore point collection.
restore_point_name = 'restore_point_name_example' # String | The name of the restore point.

begin
  
  api_instance.restore_points_delete(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->restore_points_delete: #{e}"
end
```

#### Using the restore_points_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> restore_points_delete_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name)

```ruby
begin
  
  data, status_code, headers = api_instance.restore_points_delete_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->restore_points_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **restore_point_collection_name** | **String** | The name of the restore point collection. |  |
| **restore_point_name** | **String** | The name of the restore point. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_points_get

> <RestorePoint> restore_points_get(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name, opts)



The operation to get the restore point.

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
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
restore_point_collection_name = 'restore_point_collection_name_example' # String | The name of the restore point collection.
restore_point_name = 'restore_point_name_example' # String | The name of the restore point.
opts = {
  expand: 'instanceView' # String | The expand expression to apply on the operation. 'InstanceView' retrieves information about the run-time state of a restore point.
}

begin
  
  result = api_instance.restore_points_get(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->restore_points_get: #{e}"
end
```

#### Using the restore_points_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestorePoint>, Integer, Hash)> restore_points_get_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.restore_points_get_with_http_info(api_version, subscription_id, resource_group_name, restore_point_collection_name, restore_point_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestorePoint>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->restore_points_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **restore_point_collection_name** | **String** | The name of the restore point collection. |  |
| **restore_point_name** | **String** | The name of the restore point. |  |
| **expand** | **String** | The expand expression to apply on the operation. &#39;InstanceView&#39; retrieves information about the run-time state of a restore point. | [optional] |

### Return type

[**RestorePoint**](RestorePoint.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


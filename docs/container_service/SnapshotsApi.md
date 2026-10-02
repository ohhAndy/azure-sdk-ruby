# AzureSDK::SnapshotsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**snapshots_create_or_update**](SnapshotsApi.md#snapshots_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/snapshots/{resourceName} |  |
| [**snapshots_delete**](SnapshotsApi.md#snapshots_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/snapshots/{resourceName} |  |
| [**snapshots_get**](SnapshotsApi.md#snapshots_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/snapshots/{resourceName} |  |
| [**snapshots_list**](SnapshotsApi.md#snapshots_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.ContainerService/snapshots |  |
| [**snapshots_list_by_resource_group**](SnapshotsApi.md#snapshots_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/snapshots |  |
| [**snapshots_update_tags**](SnapshotsApi.md#snapshots_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/snapshots/{resourceName} |  |


## snapshots_create_or_update

> <Snapshot> snapshots_create_or_update(api_version, subscription_id, resource_group_name, resource_name, parameters)



Creates or updates a snapshot.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SnapshotsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
parameters = AzureSDK::Snapshot.new({location: 'location_example'}) # Snapshot | The snapshot to create or update.

begin
  
  result = api_instance.snapshots_create_or_update(api_version, subscription_id, resource_group_name, resource_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_create_or_update: #{e}"
end
```

#### Using the snapshots_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> snapshots_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.snapshots_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **parameters** | [**Snapshot**](Snapshot.md) | The snapshot to create or update. |  |

### Return type

[**Snapshot**](Snapshot.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## snapshots_delete

> snapshots_delete(api_version, subscription_id, resource_group_name, resource_name)



Deletes a snapshot.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SnapshotsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  api_instance.snapshots_delete(api_version, subscription_id, resource_group_name, resource_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_delete: #{e}"
end
```

#### Using the snapshots_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> snapshots_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.snapshots_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_get

> <Snapshot> snapshots_get(api_version, subscription_id, resource_group_name, resource_name)



Gets a snapshot.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SnapshotsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  result = api_instance.snapshots_get(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_get: #{e}"
end
```

#### Using the snapshots_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> snapshots_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.snapshots_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_get_with_http_info: #{e}"
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

[**Snapshot**](Snapshot.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_list

> <SnapshotListResult> snapshots_list(api_version, subscription_id)



Gets a list of snapshots in the specified subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SnapshotsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.snapshots_list(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_list: #{e}"
end
```

#### Using the snapshots_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SnapshotListResult>, Integer, Hash)> snapshots_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.snapshots_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SnapshotListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**SnapshotListResult**](SnapshotListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_list_by_resource_group

> <SnapshotListResult> snapshots_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists snapshots in the specified subscription and resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SnapshotsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.snapshots_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_list_by_resource_group: #{e}"
end
```

#### Using the snapshots_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SnapshotListResult>, Integer, Hash)> snapshots_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.snapshots_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SnapshotListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**SnapshotListResult**](SnapshotListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_update_tags

> <Snapshot> snapshots_update_tags(api_version, subscription_id, resource_group_name, resource_name, parameters)



Updates tags on a snapshot.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::SnapshotsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
parameters = AzureSDK::TagsObject.new # TagsObject | Parameters supplied to the Update snapshot Tags operation.

begin
  
  result = api_instance.snapshots_update_tags(api_version, subscription_id, resource_group_name, resource_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_update_tags: #{e}"
end
```

#### Using the snapshots_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> snapshots_update_tags_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.snapshots_update_tags_with_http_info(api_version, subscription_id, resource_group_name, resource_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue AzureSDK::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to the Update snapshot Tags operation. |  |

### Return type

[**Snapshot**](Snapshot.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


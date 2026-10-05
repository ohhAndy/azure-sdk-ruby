# AzureRest::ProximityPlacementGroupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**proximity_placement_groups_create_or_update**](ProximityPlacementGroupsApi.md#proximity_placement_groups_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/proximityPlacementGroups/{proximityPlacementGroupName} |  |
| [**proximity_placement_groups_delete**](ProximityPlacementGroupsApi.md#proximity_placement_groups_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/proximityPlacementGroups/{proximityPlacementGroupName} |  |
| [**proximity_placement_groups_get**](ProximityPlacementGroupsApi.md#proximity_placement_groups_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/proximityPlacementGroups/{proximityPlacementGroupName} |  |
| [**proximity_placement_groups_list_by_resource_group**](ProximityPlacementGroupsApi.md#proximity_placement_groups_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/proximityPlacementGroups |  |
| [**proximity_placement_groups_list_by_subscription**](ProximityPlacementGroupsApi.md#proximity_placement_groups_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/proximityPlacementGroups |  |
| [**proximity_placement_groups_update**](ProximityPlacementGroupsApi.md#proximity_placement_groups_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/proximityPlacementGroups/{proximityPlacementGroupName} |  |


## proximity_placement_groups_create_or_update

> <ProximityPlacementGroup> proximity_placement_groups_create_or_update(api_version, subscription_id, resource_group_name, proximity_placement_group_name, parameters)



Create or update a proximity placement group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ProximityPlacementGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
proximity_placement_group_name = 'proximity_placement_group_name_example' # String | The name of the proximity placement group.
parameters = AzureRest::ProximityPlacementGroup.new({location: 'location_example'}) # ProximityPlacementGroup | Parameters supplied to the Create Proximity Placement Group operation.

begin
  
  result = api_instance.proximity_placement_groups_create_or_update(api_version, subscription_id, resource_group_name, proximity_placement_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_create_or_update: #{e}"
end
```

#### Using the proximity_placement_groups_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProximityPlacementGroup>, Integer, Hash)> proximity_placement_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, proximity_placement_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.proximity_placement_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, proximity_placement_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProximityPlacementGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **proximity_placement_group_name** | **String** | The name of the proximity placement group. |  |
| **parameters** | [**ProximityPlacementGroup**](ProximityPlacementGroup.md) | Parameters supplied to the Create Proximity Placement Group operation. |  |

### Return type

[**ProximityPlacementGroup**](ProximityPlacementGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## proximity_placement_groups_delete

> proximity_placement_groups_delete(api_version, subscription_id, resource_group_name, proximity_placement_group_name)



Delete a proximity placement group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ProximityPlacementGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
proximity_placement_group_name = 'proximity_placement_group_name_example' # String | The name of the proximity placement group.

begin
  
  api_instance.proximity_placement_groups_delete(api_version, subscription_id, resource_group_name, proximity_placement_group_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_delete: #{e}"
end
```

#### Using the proximity_placement_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> proximity_placement_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, proximity_placement_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.proximity_placement_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, proximity_placement_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **proximity_placement_group_name** | **String** | The name of the proximity placement group. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## proximity_placement_groups_get

> <ProximityPlacementGroup> proximity_placement_groups_get(api_version, subscription_id, resource_group_name, proximity_placement_group_name, opts)



Retrieves information about a proximity placement group .

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ProximityPlacementGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
proximity_placement_group_name = 'proximity_placement_group_name_example' # String | The name of the proximity placement group.
opts = {
  include_colocation_status: 'include_colocation_status_example' # String | includeColocationStatus=true enables fetching the colocation status of all the resources in the proximity placement group.
}

begin
  
  result = api_instance.proximity_placement_groups_get(api_version, subscription_id, resource_group_name, proximity_placement_group_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_get: #{e}"
end
```

#### Using the proximity_placement_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProximityPlacementGroup>, Integer, Hash)> proximity_placement_groups_get_with_http_info(api_version, subscription_id, resource_group_name, proximity_placement_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.proximity_placement_groups_get_with_http_info(api_version, subscription_id, resource_group_name, proximity_placement_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProximityPlacementGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **proximity_placement_group_name** | **String** | The name of the proximity placement group. |  |
| **include_colocation_status** | **String** | includeColocationStatus&#x3D;true enables fetching the colocation status of all the resources in the proximity placement group. | [optional] |

### Return type

[**ProximityPlacementGroup**](ProximityPlacementGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## proximity_placement_groups_list_by_resource_group

> <ProximityPlacementGroupListResult> proximity_placement_groups_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all proximity placement groups in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ProximityPlacementGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.proximity_placement_groups_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_list_by_resource_group: #{e}"
end
```

#### Using the proximity_placement_groups_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProximityPlacementGroupListResult>, Integer, Hash)> proximity_placement_groups_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.proximity_placement_groups_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProximityPlacementGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**ProximityPlacementGroupListResult**](ProximityPlacementGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## proximity_placement_groups_list_by_subscription

> <ProximityPlacementGroupListResult> proximity_placement_groups_list_by_subscription(api_version, subscription_id)



Lists all proximity placement groups in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ProximityPlacementGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.proximity_placement_groups_list_by_subscription(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_list_by_subscription: #{e}"
end
```

#### Using the proximity_placement_groups_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProximityPlacementGroupListResult>, Integer, Hash)> proximity_placement_groups_list_by_subscription_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.proximity_placement_groups_list_by_subscription_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProximityPlacementGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**ProximityPlacementGroupListResult**](ProximityPlacementGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## proximity_placement_groups_update

> <ProximityPlacementGroup> proximity_placement_groups_update(api_version, subscription_id, resource_group_name, proximity_placement_group_name, parameters)



Update a proximity placement group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ProximityPlacementGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
proximity_placement_group_name = 'proximity_placement_group_name_example' # String | The name of the proximity placement group.
parameters = AzureRest::ProximityPlacementGroupUpdate.new # ProximityPlacementGroupUpdate | Parameters supplied to the Update Proximity Placement Group operation.

begin
  
  result = api_instance.proximity_placement_groups_update(api_version, subscription_id, resource_group_name, proximity_placement_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_update: #{e}"
end
```

#### Using the proximity_placement_groups_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProximityPlacementGroup>, Integer, Hash)> proximity_placement_groups_update_with_http_info(api_version, subscription_id, resource_group_name, proximity_placement_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.proximity_placement_groups_update_with_http_info(api_version, subscription_id, resource_group_name, proximity_placement_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProximityPlacementGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling ProximityPlacementGroupsApi->proximity_placement_groups_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **proximity_placement_group_name** | **String** | The name of the proximity placement group. |  |
| **parameters** | [**ProximityPlacementGroupUpdate**](ProximityPlacementGroupUpdate.md) | Parameters supplied to the Update Proximity Placement Group operation. |  |

### Return type

[**ProximityPlacementGroup**](ProximityPlacementGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


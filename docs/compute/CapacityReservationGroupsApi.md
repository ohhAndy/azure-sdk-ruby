# AzureRest::CapacityReservationGroupsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**capacity_reservation_groups_create_or_update**](CapacityReservationGroupsApi.md#capacity_reservation_groups_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName} |  |
| [**capacity_reservation_groups_delete**](CapacityReservationGroupsApi.md#capacity_reservation_groups_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName} |  |
| [**capacity_reservation_groups_get**](CapacityReservationGroupsApi.md#capacity_reservation_groups_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName} |  |
| [**capacity_reservation_groups_list_by_resource_group**](CapacityReservationGroupsApi.md#capacity_reservation_groups_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups |  |
| [**capacity_reservation_groups_list_by_subscription**](CapacityReservationGroupsApi.md#capacity_reservation_groups_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/capacityReservationGroups |  |
| [**capacity_reservation_groups_update**](CapacityReservationGroupsApi.md#capacity_reservation_groups_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName} |  |


## capacity_reservation_groups_create_or_update

> <CapacityReservationGroup> capacity_reservation_groups_create_or_update(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, parameters)



The operation to create or update a capacity reservation group. When updating a capacity reservation group, only tags and sharing profile may be modified. Please refer to https://aka.ms/CapacityReservation for more details.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::CapacityReservationGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
capacity_reservation_group_name = 'capacity_reservation_group_name_example' # String | The name of the capacity reservation group.
parameters = AzureRest::CapacityReservationGroup.new({location: 'location_example'}) # CapacityReservationGroup | Parameters supplied to the Create capacity reservation Group.

begin
  
  result = api_instance.capacity_reservation_groups_create_or_update(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_create_or_update: #{e}"
end
```

#### Using the capacity_reservation_groups_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapacityReservationGroup>, Integer, Hash)> capacity_reservation_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservation_groups_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapacityReservationGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **capacity_reservation_group_name** | **String** | The name of the capacity reservation group. |  |
| **parameters** | [**CapacityReservationGroup**](CapacityReservationGroup.md) | Parameters supplied to the Create capacity reservation Group. |  |

### Return type

[**CapacityReservationGroup**](CapacityReservationGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## capacity_reservation_groups_delete

> capacity_reservation_groups_delete(api_version, subscription_id, resource_group_name, capacity_reservation_group_name)



The operation to delete a capacity reservation group. This operation is allowed only if all the associated resources are disassociated from the reservation group and all capacity reservations under the reservation group have also been deleted. Please refer to https://aka.ms/CapacityReservation for more details.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::CapacityReservationGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
capacity_reservation_group_name = 'capacity_reservation_group_name_example' # String | The name of the capacity reservation group.

begin
  
  api_instance.capacity_reservation_groups_delete(api_version, subscription_id, resource_group_name, capacity_reservation_group_name)
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_delete: #{e}"
end
```

#### Using the capacity_reservation_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> capacity_reservation_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservation_groups_delete_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **capacity_reservation_group_name** | **String** | The name of the capacity reservation group. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capacity_reservation_groups_get

> <CapacityReservationGroup> capacity_reservation_groups_get(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, opts)



The operation that retrieves information about a capacity reservation group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::CapacityReservationGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
capacity_reservation_group_name = 'capacity_reservation_group_name_example' # String | The name of the capacity reservation group.
opts = {
  expand: 'instanceView' # String | The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the capacity reservations under the capacity reservation group which is a snapshot of the runtime properties of a capacity reservation that is managed by the platform and can change outside of control plane operations.
}

begin
  
  result = api_instance.capacity_reservation_groups_get(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_get: #{e}"
end
```

#### Using the capacity_reservation_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapacityReservationGroup>, Integer, Hash)> capacity_reservation_groups_get_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservation_groups_get_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapacityReservationGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **capacity_reservation_group_name** | **String** | The name of the capacity reservation group. |  |
| **expand** | **String** | The expand expression to apply on the operation. &#39;InstanceView&#39; will retrieve the list of instance views of the capacity reservations under the capacity reservation group which is a snapshot of the runtime properties of a capacity reservation that is managed by the platform and can change outside of control plane operations. | [optional] |

### Return type

[**CapacityReservationGroup**](CapacityReservationGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capacity_reservation_groups_list_by_resource_group

> <CapacityReservationGroupListResult> capacity_reservation_groups_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)



Lists all of the capacity reservation groups in the specified resource group. Use the nextLink property in the response to get the next page of capacity reservation groups.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::CapacityReservationGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
opts = {
  expand: 'virtualMachineScaleSetVMs/$ref' # String | The expand expression to apply on the operation. Based on the expand param(s) specified we return Virtual Machine or ScaleSet VM Instance or both resource Ids which are associated to capacity reservation group in the response.
}

begin
  
  result = api_instance.capacity_reservation_groups_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_list_by_resource_group: #{e}"
end
```

#### Using the capacity_reservation_groups_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapacityReservationGroupListResult>, Integer, Hash)> capacity_reservation_groups_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservation_groups_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapacityReservationGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **expand** | **String** | The expand expression to apply on the operation. Based on the expand param(s) specified we return Virtual Machine or ScaleSet VM Instance or both resource Ids which are associated to capacity reservation group in the response. | [optional] |

### Return type

[**CapacityReservationGroupListResult**](CapacityReservationGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capacity_reservation_groups_list_by_subscription

> <CapacityReservationGroupListResult> capacity_reservation_groups_list_by_subscription(api_version, subscription_id, opts)



Lists all of the capacity reservation groups in the subscription. Use the nextLink property in the response to get the next page of capacity reservation groups.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::CapacityReservationGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
opts = {
  expand: 'virtualMachineScaleSetVMs/$ref', # String | The expand expression to apply on the operation. Based on the expand param(s) specified we return Virtual Machine or ScaleSet VM Instance or both resource Ids which are associated to capacity reservation group in the response.
  resource_ids_only: 'CreatedInSubscription' # String | The query option to fetch Capacity Reservation Group Resource Ids. <br> 'CreatedInSubscription' enables fetching Resource Ids for all capacity reservation group resources created in the subscription. <br> 'SharedWithSubscription' enables fetching Resource Ids for all capacity reservation group resources shared with the subscription. <br> 'All' enables fetching Resource Ids for all capacity reservation group resources shared with the subscription and created in the subscription.
}

begin
  
  result = api_instance.capacity_reservation_groups_list_by_subscription(api_version, subscription_id, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_list_by_subscription: #{e}"
end
```

#### Using the capacity_reservation_groups_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapacityReservationGroupListResult>, Integer, Hash)> capacity_reservation_groups_list_by_subscription_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservation_groups_list_by_subscription_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapacityReservationGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **expand** | **String** | The expand expression to apply on the operation. Based on the expand param(s) specified we return Virtual Machine or ScaleSet VM Instance or both resource Ids which are associated to capacity reservation group in the response. | [optional] |
| **resource_ids_only** | **String** | The query option to fetch Capacity Reservation Group Resource Ids. &lt;br&gt; &#39;CreatedInSubscription&#39; enables fetching Resource Ids for all capacity reservation group resources created in the subscription. &lt;br&gt; &#39;SharedWithSubscription&#39; enables fetching Resource Ids for all capacity reservation group resources shared with the subscription. &lt;br&gt; &#39;All&#39; enables fetching Resource Ids for all capacity reservation group resources shared with the subscription and created in the subscription. | [optional] |

### Return type

[**CapacityReservationGroupListResult**](CapacityReservationGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capacity_reservation_groups_update

> <CapacityReservationGroup> capacity_reservation_groups_update(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, parameters)



The operation to update a capacity reservation group. When updating a capacity reservation group, only tags and sharing profile may be modified.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::CapacityReservationGroupsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
capacity_reservation_group_name = 'capacity_reservation_group_name_example' # String | The name of the capacity reservation group.
parameters = AzureRest::CapacityReservationGroupUpdate.new # CapacityReservationGroupUpdate | Parameters supplied to the Update capacity reservation Group operation.

begin
  
  result = api_instance.capacity_reservation_groups_update(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_update: #{e}"
end
```

#### Using the capacity_reservation_groups_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapacityReservationGroup>, Integer, Hash)> capacity_reservation_groups_update_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservation_groups_update_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapacityReservationGroup>
rescue AzureRest::ApiError => e
  puts "Error when calling CapacityReservationGroupsApi->capacity_reservation_groups_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **capacity_reservation_group_name** | **String** | The name of the capacity reservation group. |  |
| **parameters** | [**CapacityReservationGroupUpdate**](CapacityReservationGroupUpdate.md) | Parameters supplied to the Update capacity reservation Group operation. |  |

### Return type

[**CapacityReservationGroup**](CapacityReservationGroup.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


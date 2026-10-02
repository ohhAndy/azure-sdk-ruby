# AzureSDK::CapacityReservationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**capacity_reservations_create_or_update**](CapacityReservationsApi.md#capacity_reservations_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName}/capacityReservations/{capacityReservationName} |  |
| [**capacity_reservations_delete**](CapacityReservationsApi.md#capacity_reservations_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName}/capacityReservations/{capacityReservationName} |  |
| [**capacity_reservations_get**](CapacityReservationsApi.md#capacity_reservations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName}/capacityReservations/{capacityReservationName} |  |
| [**capacity_reservations_update**](CapacityReservationsApi.md#capacity_reservations_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName}/capacityReservations/{capacityReservationName} |  |


## capacity_reservations_create_or_update

> <CapacityReservation> capacity_reservations_create_or_update(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, parameters)



The operation to create or update a capacity reservation. Please note some properties can be set only during capacity reservation creation. Please refer to https://aka.ms/CapacityReservation for more details.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::CapacityReservationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
capacity_reservation_group_name = 'capacity_reservation_group_name_example' # String | The name of the capacity reservation group.
capacity_reservation_name = 'capacity_reservation_name_example' # String | The name of the capacity reservation.
parameters = AzureSDK::CapacityReservation.new({location: 'location_example', sku: AzureSDK::Sku.new}) # CapacityReservation | Parameters supplied to the Create capacity reservation.

begin
  
  result = api_instance.capacity_reservations_create_or_update(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationsApi->capacity_reservations_create_or_update: #{e}"
end
```

#### Using the capacity_reservations_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapacityReservation>, Integer, Hash)> capacity_reservations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapacityReservation>
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationsApi->capacity_reservations_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **capacity_reservation_group_name** | **String** | The name of the capacity reservation group. |  |
| **capacity_reservation_name** | **String** | The name of the capacity reservation. |  |
| **parameters** | [**CapacityReservation**](CapacityReservation.md) | Parameters supplied to the Create capacity reservation. |  |

### Return type

[**CapacityReservation**](CapacityReservation.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## capacity_reservations_delete

> capacity_reservations_delete(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name)



The operation to delete a capacity reservation. This operation is allowed only when all the associated resources are disassociated from the capacity reservation. Please refer to https://aka.ms/CapacityReservation for more details. Note: Block capacity reservations cannot be deleted after they have been successfully allocated until the schedule end time. Future capacity reservations (Minimum API version: 2026-04-01) can be deleted if their reservation state is one of: Pending, Declined, FulfillmentFailed, or Approved. Otherwise, Future capacity reservations in the Committed, Live, or PartiallyFulfilled state cannot be deleted until minimumCommitmentDays have elapsed since their scheduled start date.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::CapacityReservationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
capacity_reservation_group_name = 'capacity_reservation_group_name_example' # String | The name of the capacity reservation group.
capacity_reservation_name = 'capacity_reservation_name_example' # String | The name of the capacity reservation.

begin
  
  api_instance.capacity_reservations_delete(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationsApi->capacity_reservations_delete: #{e}"
end
```

#### Using the capacity_reservations_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> capacity_reservations_delete_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservations_delete_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationsApi->capacity_reservations_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **capacity_reservation_group_name** | **String** | The name of the capacity reservation group. |  |
| **capacity_reservation_name** | **String** | The name of the capacity reservation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capacity_reservations_get

> <CapacityReservation> capacity_reservations_get(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, opts)



The operation that retrieves information about the capacity reservation.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::CapacityReservationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
capacity_reservation_group_name = 'capacity_reservation_group_name_example' # String | The name of the capacity reservation group.
capacity_reservation_name = 'capacity_reservation_name_example' # String | The name of the capacity reservation.
opts = {
  expand: 'instanceView' # String | The expand expression to apply on the operation. 'InstanceView' retrieves a snapshot of the runtime properties of the capacity reservation that is managed by the platform and can change outside of control plane operations.
}

begin
  
  result = api_instance.capacity_reservations_get(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationsApi->capacity_reservations_get: #{e}"
end
```

#### Using the capacity_reservations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapacityReservation>, Integer, Hash)> capacity_reservations_get_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservations_get_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapacityReservation>
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationsApi->capacity_reservations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **capacity_reservation_group_name** | **String** | The name of the capacity reservation group. |  |
| **capacity_reservation_name** | **String** | The name of the capacity reservation. |  |
| **expand** | **String** | The expand expression to apply on the operation. &#39;InstanceView&#39; retrieves a snapshot of the runtime properties of the capacity reservation that is managed by the platform and can change outside of control plane operations. | [optional] |

### Return type

[**CapacityReservation**](CapacityReservation.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capacity_reservations_update

> <CapacityReservation> capacity_reservations_update(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, parameters)



The operation to update a capacity reservation.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::CapacityReservationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
capacity_reservation_group_name = 'capacity_reservation_group_name_example' # String | The name of the capacity reservation group.
capacity_reservation_name = 'capacity_reservation_name_example' # String | The name of the capacity reservation.
parameters = AzureSDK::CapacityReservationUpdate.new # CapacityReservationUpdate | Parameters supplied to the Update capacity reservation operation.

begin
  
  result = api_instance.capacity_reservations_update(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationsApi->capacity_reservations_update: #{e}"
end
```

#### Using the capacity_reservations_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapacityReservation>, Integer, Hash)> capacity_reservations_update_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservations_update_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, capacity_reservation_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapacityReservation>
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationsApi->capacity_reservations_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **capacity_reservation_group_name** | **String** | The name of the capacity reservation group. |  |
| **capacity_reservation_name** | **String** | The name of the capacity reservation. |  |
| **parameters** | [**CapacityReservationUpdate**](CapacityReservationUpdate.md) | Parameters supplied to the Update capacity reservation operation. |  |

### Return type

[**CapacityReservation**](CapacityReservation.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


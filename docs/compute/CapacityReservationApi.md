# AzureSDK::CapacityReservationApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**capacity_reservations_list_by_capacity_reservation_group**](CapacityReservationApi.md#capacity_reservations_list_by_capacity_reservation_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName}/capacityReservations |  |


## capacity_reservations_list_by_capacity_reservation_group

> <CapacityReservationListResult> capacity_reservations_list_by_capacity_reservation_group(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, opts)



Lists all of the capacity reservations in the specified capacity reservation group. Use the nextLink property in the response to get the next page of capacity reservations.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::CapacityReservationApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
capacity_reservation_group_name = 'capacity_reservation_group_name_example' # String | The name of the capacity reservation group.
opts = {
  expand: 'virtualMachineScaleSetVMs/$ref' # String | The expand expression to apply on the operation. Based on the expand param(s) specified we return Virtual Machine or ScaleSet VM Instance or both resource Ids which are associated to capacity reservation group in the response.
}

begin
  
  result = api_instance.capacity_reservations_list_by_capacity_reservation_group(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationApi->capacity_reservations_list_by_capacity_reservation_group: #{e}"
end
```

#### Using the capacity_reservations_list_by_capacity_reservation_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapacityReservationListResult>, Integer, Hash)> capacity_reservations_list_by_capacity_reservation_group_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.capacity_reservations_list_by_capacity_reservation_group_with_http_info(api_version, subscription_id, resource_group_name, capacity_reservation_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapacityReservationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling CapacityReservationApi->capacity_reservations_list_by_capacity_reservation_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **capacity_reservation_group_name** | **String** | The name of the capacity reservation group. |  |
| **expand** | **String** | The expand expression to apply on the operation. Based on the expand param(s) specified we return Virtual Machine or ScaleSet VM Instance or both resource Ids which are associated to capacity reservation group in the response. | [optional] |

### Return type

[**CapacityReservationListResult**](CapacityReservationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# AzureSDK::AvailabilitySetsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**availability_sets_cancel_migration_to_virtual_machine_scale_set**](AvailabilitySetsApi.md#availability_sets_cancel_migration_to_virtual_machine_scale_set) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}/cancelMigrationToVirtualMachineScaleSet |  |
| [**availability_sets_convert_to_virtual_machine_scale_set**](AvailabilitySetsApi.md#availability_sets_convert_to_virtual_machine_scale_set) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}/convertToVirtualMachineScaleSet |  |
| [**availability_sets_create_or_update**](AvailabilitySetsApi.md#availability_sets_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName} |  |
| [**availability_sets_delete**](AvailabilitySetsApi.md#availability_sets_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName} |  |
| [**availability_sets_get**](AvailabilitySetsApi.md#availability_sets_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName} |  |
| [**availability_sets_list**](AvailabilitySetsApi.md#availability_sets_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets |  |
| [**availability_sets_list_available_sizes**](AvailabilitySetsApi.md#availability_sets_list_available_sizes) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}/vmSizes |  |
| [**availability_sets_list_by_subscription**](AvailabilitySetsApi.md#availability_sets_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/availabilitySets |  |
| [**availability_sets_start_migration_to_virtual_machine_scale_set**](AvailabilitySetsApi.md#availability_sets_start_migration_to_virtual_machine_scale_set) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}/startMigrationToVirtualMachineScaleSet |  |
| [**availability_sets_update**](AvailabilitySetsApi.md#availability_sets_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName} |  |
| [**availability_sets_validate_migration_to_virtual_machine_scale_set**](AvailabilitySetsApi.md#availability_sets_validate_migration_to_virtual_machine_scale_set) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}/validateMigrationToVirtualMachineScaleSet |  |


## availability_sets_cancel_migration_to_virtual_machine_scale_set

> availability_sets_cancel_migration_to_virtual_machine_scale_set(api_version, subscription_id, resource_group_name, availability_set_name)



Cancel the migration operation on an Availability Set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
availability_set_name = 'availability_set_name_example' # String | The name of the availability set.

begin
  
  api_instance.availability_sets_cancel_migration_to_virtual_machine_scale_set(api_version, subscription_id, resource_group_name, availability_set_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_cancel_migration_to_virtual_machine_scale_set: #{e}"
end
```

#### Using the availability_sets_cancel_migration_to_virtual_machine_scale_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> availability_sets_cancel_migration_to_virtual_machine_scale_set_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_cancel_migration_to_virtual_machine_scale_set_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_cancel_migration_to_virtual_machine_scale_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **availability_set_name** | **String** | The name of the availability set. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## availability_sets_convert_to_virtual_machine_scale_set

> availability_sets_convert_to_virtual_machine_scale_set(api_version, subscription_id, resource_group_name, availability_set_name, opts)



Create a new Flexible Virtual Machine Scale Set and migrate all the Virtual Machines in the Availability Set. This does not trigger a downtime on the Virtual Machines.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
availability_set_name = 'availability_set_name_example' # String | The name of the availability set.
opts = {
  parameters: AzureSDK::ConvertToVirtualMachineScaleSetInput.new # ConvertToVirtualMachineScaleSetInput | Parameters supplied to the migrate operation on the availability set.
}

begin
  
  api_instance.availability_sets_convert_to_virtual_machine_scale_set(api_version, subscription_id, resource_group_name, availability_set_name, opts)
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_convert_to_virtual_machine_scale_set: #{e}"
end
```

#### Using the availability_sets_convert_to_virtual_machine_scale_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> availability_sets_convert_to_virtual_machine_scale_set_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_convert_to_virtual_machine_scale_set_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_convert_to_virtual_machine_scale_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **availability_set_name** | **String** | The name of the availability set. |  |
| **parameters** | [**ConvertToVirtualMachineScaleSetInput**](ConvertToVirtualMachineScaleSetInput.md) | Parameters supplied to the migrate operation on the availability set. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## availability_sets_create_or_update

> <AvailabilitySet> availability_sets_create_or_update(api_version, subscription_id, resource_group_name, availability_set_name, parameters)



Create or update an availability set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
availability_set_name = 'availability_set_name_example' # String | The name of the availability set.
parameters = AzureSDK::AvailabilitySet.new({location: 'location_example'}) # AvailabilitySet | Parameters supplied to the Create Availability Set operation.

begin
  
  result = api_instance.availability_sets_create_or_update(api_version, subscription_id, resource_group_name, availability_set_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_create_or_update: #{e}"
end
```

#### Using the availability_sets_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilitySet>, Integer, Hash)> availability_sets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilitySet>
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **availability_set_name** | **String** | The name of the availability set. |  |
| **parameters** | [**AvailabilitySet**](AvailabilitySet.md) | Parameters supplied to the Create Availability Set operation. |  |

### Return type

[**AvailabilitySet**](AvailabilitySet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## availability_sets_delete

> availability_sets_delete(api_version, subscription_id, resource_group_name, availability_set_name)



Delete an availability set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
availability_set_name = 'availability_set_name_example' # String | The name of the availability set.

begin
  
  api_instance.availability_sets_delete(api_version, subscription_id, resource_group_name, availability_set_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_delete: #{e}"
end
```

#### Using the availability_sets_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> availability_sets_delete_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_delete_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **availability_set_name** | **String** | The name of the availability set. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## availability_sets_get

> <AvailabilitySet> availability_sets_get(api_version, subscription_id, resource_group_name, availability_set_name)



Retrieves information about an availability set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
availability_set_name = 'availability_set_name_example' # String | The name of the availability set.

begin
  
  result = api_instance.availability_sets_get(api_version, subscription_id, resource_group_name, availability_set_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_get: #{e}"
end
```

#### Using the availability_sets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilitySet>, Integer, Hash)> availability_sets_get_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_get_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilitySet>
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **availability_set_name** | **String** | The name of the availability set. |  |

### Return type

[**AvailabilitySet**](AvailabilitySet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## availability_sets_list

> <AvailabilitySetListResult> availability_sets_list(api_version, subscription_id, resource_group_name)



Lists all availability sets in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.availability_sets_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_list: #{e}"
end
```

#### Using the availability_sets_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilitySetListResult>, Integer, Hash)> availability_sets_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilitySetListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**AvailabilitySetListResult**](AvailabilitySetListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## availability_sets_list_available_sizes

> <VirtualMachineSizeListResult> availability_sets_list_available_sizes(api_version, subscription_id, resource_group_name, availability_set_name)



Lists all available virtual machine sizes that can be used to create a new virtual machine in an existing availability set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
availability_set_name = 'availability_set_name_example' # String | The name of the availability set.

begin
  
  result = api_instance.availability_sets_list_available_sizes(api_version, subscription_id, resource_group_name, availability_set_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_list_available_sizes: #{e}"
end
```

#### Using the availability_sets_list_available_sizes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineSizeListResult>, Integer, Hash)> availability_sets_list_available_sizes_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_list_available_sizes_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineSizeListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_list_available_sizes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **availability_set_name** | **String** | The name of the availability set. |  |

### Return type

[**VirtualMachineSizeListResult**](VirtualMachineSizeListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## availability_sets_list_by_subscription

> <AvailabilitySetListResult> availability_sets_list_by_subscription(api_version, subscription_id, opts)



Lists all availability sets in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
opts = {
  expand: 'expand_example' # String | The expand expression to apply to the operation. Allowed values are 'instanceView'.
}

begin
  
  result = api_instance.availability_sets_list_by_subscription(api_version, subscription_id, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_list_by_subscription: #{e}"
end
```

#### Using the availability_sets_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilitySetListResult>, Integer, Hash)> availability_sets_list_by_subscription_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_list_by_subscription_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilitySetListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **expand** | **String** | The expand expression to apply to the operation. Allowed values are &#39;instanceView&#39;. | [optional] |

### Return type

[**AvailabilitySetListResult**](AvailabilitySetListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## availability_sets_start_migration_to_virtual_machine_scale_set

> availability_sets_start_migration_to_virtual_machine_scale_set(api_version, subscription_id, resource_group_name, availability_set_name, parameters)



Start migration operation on an Availability Set to move its Virtual Machines to a Virtual Machine Scale Set. This should be followed by a migrate operation on each Virtual Machine that triggers a downtime on the Virtual Machine.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
availability_set_name = 'availability_set_name_example' # String | The name of the availability set.
parameters = AzureSDK::MigrateToVirtualMachineScaleSetInput.new({virtual_machine_scale_set_flexible: AzureSDK::SubResource.new}) # MigrateToVirtualMachineScaleSetInput | Parameters supplied to the migrate operation on the availability set.

begin
  
  api_instance.availability_sets_start_migration_to_virtual_machine_scale_set(api_version, subscription_id, resource_group_name, availability_set_name, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_start_migration_to_virtual_machine_scale_set: #{e}"
end
```

#### Using the availability_sets_start_migration_to_virtual_machine_scale_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> availability_sets_start_migration_to_virtual_machine_scale_set_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_start_migration_to_virtual_machine_scale_set_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_start_migration_to_virtual_machine_scale_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **availability_set_name** | **String** | The name of the availability set. |  |
| **parameters** | [**MigrateToVirtualMachineScaleSetInput**](MigrateToVirtualMachineScaleSetInput.md) | Parameters supplied to the migrate operation on the availability set. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## availability_sets_update

> <AvailabilitySet> availability_sets_update(api_version, subscription_id, resource_group_name, availability_set_name, parameters)



Update an availability set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
availability_set_name = 'availability_set_name_example' # String | The name of the availability set.
parameters = AzureSDK::AvailabilitySetUpdate.new # AvailabilitySetUpdate | Parameters supplied to the Update Availability Set operation.

begin
  
  result = api_instance.availability_sets_update(api_version, subscription_id, resource_group_name, availability_set_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_update: #{e}"
end
```

#### Using the availability_sets_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailabilitySet>, Integer, Hash)> availability_sets_update_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_update_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailabilitySet>
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **availability_set_name** | **String** | The name of the availability set. |  |
| **parameters** | [**AvailabilitySetUpdate**](AvailabilitySetUpdate.md) | Parameters supplied to the Update Availability Set operation. |  |

### Return type

[**AvailabilitySet**](AvailabilitySet.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## availability_sets_validate_migration_to_virtual_machine_scale_set

> availability_sets_validate_migration_to_virtual_machine_scale_set(api_version, subscription_id, resource_group_name, availability_set_name, parameters)



Validates that the Virtual Machines in the Availability Set can be migrated to the provided Virtual Machine Scale Set.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::AvailabilitySetsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
availability_set_name = 'availability_set_name_example' # String | The name of the availability set.
parameters = AzureSDK::MigrateToVirtualMachineScaleSetInput.new({virtual_machine_scale_set_flexible: AzureSDK::SubResource.new}) # MigrateToVirtualMachineScaleSetInput | Parameters supplied to the migrate operation on the availability set.

begin
  
  api_instance.availability_sets_validate_migration_to_virtual_machine_scale_set(api_version, subscription_id, resource_group_name, availability_set_name, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_validate_migration_to_virtual_machine_scale_set: #{e}"
end
```

#### Using the availability_sets_validate_migration_to_virtual_machine_scale_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> availability_sets_validate_migration_to_virtual_machine_scale_set_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.availability_sets_validate_migration_to_virtual_machine_scale_set_with_http_info(api_version, subscription_id, resource_group_name, availability_set_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling AvailabilitySetsApi->availability_sets_validate_migration_to_virtual_machine_scale_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **availability_set_name** | **String** | The name of the availability set. |  |
| **parameters** | [**MigrateToVirtualMachineScaleSetInput**](MigrateToVirtualMachineScaleSetInput.md) | Parameters supplied to the migrate operation on the availability set. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


# AzureSDK::VirtualMachineScaleSetRollingUpgradesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_scale_set_rolling_upgrades_cancel**](VirtualMachineScaleSetRollingUpgradesApi.md#virtual_machine_scale_set_rolling_upgrades_cancel) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/rollingUpgrades/cancel |  |
| [**virtual_machine_scale_set_rolling_upgrades_get_latest**](VirtualMachineScaleSetRollingUpgradesApi.md#virtual_machine_scale_set_rolling_upgrades_get_latest) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/rollingUpgrades/latest |  |
| [**virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade**](VirtualMachineScaleSetRollingUpgradesApi.md#virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/extensionRollingUpgrade |  |
| [**virtual_machine_scale_set_rolling_upgrades_start_os_upgrade**](VirtualMachineScaleSetRollingUpgradesApi.md#virtual_machine_scale_set_rolling_upgrades_start_os_upgrade) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/osRollingUpgrade |  |


## virtual_machine_scale_set_rolling_upgrades_cancel

> virtual_machine_scale_set_rolling_upgrades_cancel(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Cancels the current virtual machine scale set rolling upgrade.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetRollingUpgradesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  api_instance.virtual_machine_scale_set_rolling_upgrades_cancel(api_version, subscription_id, resource_group_name, vm_scale_set_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetRollingUpgradesApi->virtual_machine_scale_set_rolling_upgrades_cancel: #{e}"
end
```

#### Using the virtual_machine_scale_set_rolling_upgrades_cancel_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_rolling_upgrades_cancel_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_rolling_upgrades_cancel_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetRollingUpgradesApi->virtual_machine_scale_set_rolling_upgrades_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_rolling_upgrades_get_latest

> <RollingUpgradeStatusInfo> virtual_machine_scale_set_rolling_upgrades_get_latest(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Gets the status of the latest virtual machine scale set rolling upgrade.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetRollingUpgradesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  result = api_instance.virtual_machine_scale_set_rolling_upgrades_get_latest(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetRollingUpgradesApi->virtual_machine_scale_set_rolling_upgrades_get_latest: #{e}"
end
```

#### Using the virtual_machine_scale_set_rolling_upgrades_get_latest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RollingUpgradeStatusInfo>, Integer, Hash)> virtual_machine_scale_set_rolling_upgrades_get_latest_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_rolling_upgrades_get_latest_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RollingUpgradeStatusInfo>
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetRollingUpgradesApi->virtual_machine_scale_set_rolling_upgrades_get_latest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |

### Return type

[**RollingUpgradeStatusInfo**](RollingUpgradeStatusInfo.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade

> virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Starts a rolling upgrade to move all extensions for all virtual machine scale set instances to the latest available extension version. Instances which are already running the latest extension versions are not affected.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetRollingUpgradesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  api_instance.virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade(api_version, subscription_id, resource_group_name, vm_scale_set_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetRollingUpgradesApi->virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade: #{e}"
end
```

#### Using the virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetRollingUpgradesApi->virtual_machine_scale_set_rolling_upgrades_start_extension_upgrade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_scale_set_rolling_upgrades_start_os_upgrade

> virtual_machine_scale_set_rolling_upgrades_start_os_upgrade(api_version, subscription_id, resource_group_name, vm_scale_set_name)



Starts a rolling upgrade to move all virtual machine scale set instances to the latest available Platform Image OS version. Instances which are already running the latest available OS version are not affected.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::VirtualMachineScaleSetRollingUpgradesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vm_scale_set_name = 'vm_scale_set_name_example' # String | The name of the VM scale set.

begin
  
  api_instance.virtual_machine_scale_set_rolling_upgrades_start_os_upgrade(api_version, subscription_id, resource_group_name, vm_scale_set_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetRollingUpgradesApi->virtual_machine_scale_set_rolling_upgrades_start_os_upgrade: #{e}"
end
```

#### Using the virtual_machine_scale_set_rolling_upgrades_start_os_upgrade_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> virtual_machine_scale_set_rolling_upgrades_start_os_upgrade_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_scale_set_rolling_upgrades_start_os_upgrade_with_http_info(api_version, subscription_id, resource_group_name, vm_scale_set_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling VirtualMachineScaleSetRollingUpgradesApi->virtual_machine_scale_set_rolling_upgrades_start_os_upgrade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vm_scale_set_name** | **String** | The name of the VM scale set. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


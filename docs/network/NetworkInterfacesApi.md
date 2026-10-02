# AzureSDK::NetworkInterfacesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**network_interface_ip_configurations_get**](NetworkInterfacesApi.md#network_interface_ip_configurations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/ipConfigurations/{ipConfigurationName} |  |
| [**network_interface_ip_configurations_list**](NetworkInterfacesApi.md#network_interface_ip_configurations_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/ipConfigurations |  |
| [**network_interface_load_balancers_list**](NetworkInterfacesApi.md#network_interface_load_balancers_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/loadBalancers |  |
| [**network_interface_tap_configurations_create_or_update**](NetworkInterfacesApi.md#network_interface_tap_configurations_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/tapConfigurations/{tapConfigurationName} |  |
| [**network_interface_tap_configurations_delete**](NetworkInterfacesApi.md#network_interface_tap_configurations_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/tapConfigurations/{tapConfigurationName} |  |
| [**network_interface_tap_configurations_get**](NetworkInterfacesApi.md#network_interface_tap_configurations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/tapConfigurations/{tapConfigurationName} |  |
| [**network_interface_tap_configurations_list**](NetworkInterfacesApi.md#network_interface_tap_configurations_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/tapConfigurations |  |
| [**network_interfaces_create_or_update**](NetworkInterfacesApi.md#network_interfaces_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName} |  |
| [**network_interfaces_delete**](NetworkInterfacesApi.md#network_interfaces_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName} |  |
| [**network_interfaces_get**](NetworkInterfacesApi.md#network_interfaces_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName} |  |
| [**network_interfaces_get_cloud_service_network_interface**](NetworkInterfacesApi.md#network_interfaces_get_cloud_service_network_interface) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/microsoft.Compute/cloudServices/{cloudServiceName}/roleInstances/{roleInstanceName}/networkInterfaces/{networkInterfaceName} |  |
| [**network_interfaces_get_effective_route_table**](NetworkInterfacesApi.md#network_interfaces_get_effective_route_table) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/effectiveRouteTable |  |
| [**network_interfaces_list**](NetworkInterfacesApi.md#network_interfaces_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces |  |
| [**network_interfaces_list_all**](NetworkInterfacesApi.md#network_interfaces_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/networkInterfaces |  |
| [**network_interfaces_list_cloud_service_network_interfaces**](NetworkInterfacesApi.md#network_interfaces_list_cloud_service_network_interfaces) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/microsoft.Compute/cloudServices/{cloudServiceName}/networkInterfaces |  |
| [**network_interfaces_list_cloud_service_role_instance_network_interfaces**](NetworkInterfacesApi.md#network_interfaces_list_cloud_service_role_instance_network_interfaces) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/microsoft.Compute/cloudServices/{cloudServiceName}/roleInstances/{roleInstanceName}/networkInterfaces |  |
| [**network_interfaces_list_effective_network_security_groups**](NetworkInterfacesApi.md#network_interfaces_list_effective_network_security_groups) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/effectiveNetworkSecurityGroups |  |
| [**network_interfaces_update_tags**](NetworkInterfacesApi.md#network_interfaces_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName} |  |


## network_interface_ip_configurations_get

> <NetworkInterfaceIPConfiguration> network_interface_ip_configurations_get(api_version, subscription_id, resource_group_name, network_interface_name, ip_configuration_name)



Gets the specified network interface ip configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
ip_configuration_name = 'ip_configuration_name_example' # String | The name of the ip configuration name.

begin
  
  result = api_instance.network_interface_ip_configurations_get(api_version, subscription_id, resource_group_name, network_interface_name, ip_configuration_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_ip_configurations_get: #{e}"
end
```

#### Using the network_interface_ip_configurations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceIPConfiguration>, Integer, Hash)> network_interface_ip_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, ip_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interface_ip_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, ip_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceIPConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_ip_configurations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **ip_configuration_name** | **String** | The name of the ip configuration name. |  |

### Return type

[**NetworkInterfaceIPConfiguration**](NetworkInterfaceIPConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interface_ip_configurations_list

> <NetworkInterfaceIPConfigurationListResult> network_interface_ip_configurations_list(api_version, subscription_id, resource_group_name, network_interface_name)



Get all ip configurations in a network interface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.

begin
  
  result = api_instance.network_interface_ip_configurations_list(api_version, subscription_id, resource_group_name, network_interface_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_ip_configurations_list: #{e}"
end
```

#### Using the network_interface_ip_configurations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceIPConfigurationListResult>, Integer, Hash)> network_interface_ip_configurations_list_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interface_ip_configurations_list_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceIPConfigurationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_ip_configurations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |

### Return type

[**NetworkInterfaceIPConfigurationListResult**](NetworkInterfaceIPConfigurationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interface_load_balancers_list

> <NetworkInterfaceLoadBalancerListResult> network_interface_load_balancers_list(api_version, subscription_id, resource_group_name, network_interface_name)



List all load balancers in a network interface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.

begin
  
  result = api_instance.network_interface_load_balancers_list(api_version, subscription_id, resource_group_name, network_interface_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_load_balancers_list: #{e}"
end
```

#### Using the network_interface_load_balancers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceLoadBalancerListResult>, Integer, Hash)> network_interface_load_balancers_list_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interface_load_balancers_list_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceLoadBalancerListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_load_balancers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |

### Return type

[**NetworkInterfaceLoadBalancerListResult**](NetworkInterfaceLoadBalancerListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interface_tap_configurations_create_or_update

> <NetworkInterfaceTapConfiguration> network_interface_tap_configurations_create_or_update(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name, tap_configuration_parameters)



Creates or updates a Tap configuration in the specified NetworkInterface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
tap_configuration_name = 'tap_configuration_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.
tap_configuration_parameters = AzureSDK::NetworkInterfaceTapConfiguration.new # NetworkInterfaceTapConfiguration | Parameters supplied to the create or update tap configuration operation.

begin
  
  result = api_instance.network_interface_tap_configurations_create_or_update(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name, tap_configuration_parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_tap_configurations_create_or_update: #{e}"
end
```

#### Using the network_interface_tap_configurations_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceTapConfiguration>, Integer, Hash)> network_interface_tap_configurations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name, tap_configuration_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interface_tap_configurations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name, tap_configuration_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceTapConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_tap_configurations_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **tap_configuration_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |
| **tap_configuration_parameters** | [**NetworkInterfaceTapConfiguration**](NetworkInterfaceTapConfiguration.md) | Parameters supplied to the create or update tap configuration operation. |  |

### Return type

[**NetworkInterfaceTapConfiguration**](NetworkInterfaceTapConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_interface_tap_configurations_delete

> network_interface_tap_configurations_delete(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name)



Deletes the specified tap configuration from the NetworkInterface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
tap_configuration_name = 'tap_configuration_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.

begin
  
  api_instance.network_interface_tap_configurations_delete(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_tap_configurations_delete: #{e}"
end
```

#### Using the network_interface_tap_configurations_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_interface_tap_configurations_delete_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interface_tap_configurations_delete_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_tap_configurations_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **tap_configuration_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interface_tap_configurations_get

> <NetworkInterfaceTapConfiguration> network_interface_tap_configurations_get(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name)



Get the specified tap configuration on a network interface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
tap_configuration_name = 'tap_configuration_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.

begin
  
  result = api_instance.network_interface_tap_configurations_get(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_tap_configurations_get: #{e}"
end
```

#### Using the network_interface_tap_configurations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceTapConfiguration>, Integer, Hash)> network_interface_tap_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interface_tap_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, tap_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceTapConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_tap_configurations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **tap_configuration_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |

### Return type

[**NetworkInterfaceTapConfiguration**](NetworkInterfaceTapConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interface_tap_configurations_list

> <NetworkInterfaceTapConfigurationListResult> network_interface_tap_configurations_list(api_version, subscription_id, resource_group_name, network_interface_name)



Get all Tap configurations in a network interface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.

begin
  
  result = api_instance.network_interface_tap_configurations_list(api_version, subscription_id, resource_group_name, network_interface_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_tap_configurations_list: #{e}"
end
```

#### Using the network_interface_tap_configurations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceTapConfigurationListResult>, Integer, Hash)> network_interface_tap_configurations_list_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interface_tap_configurations_list_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceTapConfigurationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interface_tap_configurations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |

### Return type

[**NetworkInterfaceTapConfigurationListResult**](NetworkInterfaceTapConfigurationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_create_or_update

> <NetworkInterface> network_interfaces_create_or_update(api_version, subscription_id, resource_group_name, network_interface_name, parameters)



Creates or updates a network interface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
parameters = AzureSDK::NetworkInterface.new # NetworkInterface | Parameters supplied to the create or update network interface operation.

begin
  
  result = api_instance.network_interfaces_create_or_update(api_version, subscription_id, resource_group_name, network_interface_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_create_or_update: #{e}"
end
```

#### Using the network_interfaces_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterface>, Integer, Hash)> network_interfaces_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterface>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **parameters** | [**NetworkInterface**](NetworkInterface.md) | Parameters supplied to the create or update network interface operation. |  |

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_interfaces_delete

> network_interfaces_delete(api_version, subscription_id, resource_group_name, network_interface_name)



Deletes the specified network interface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.

begin
  
  api_instance.network_interfaces_delete(api_version, subscription_id, resource_group_name, network_interface_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_delete: #{e}"
end
```

#### Using the network_interfaces_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_interfaces_delete_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_delete_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_get

> <NetworkInterface> network_interfaces_get(api_version, subscription_id, resource_group_name, network_interface_name, opts)



Gets information about the specified network interface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.network_interfaces_get(api_version, subscription_id, resource_group_name, network_interface_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_get: #{e}"
end
```

#### Using the network_interfaces_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterface>, Integer, Hash)> network_interfaces_get_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_get_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterface>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_get_cloud_service_network_interface

> <NetworkInterface> network_interfaces_get_cloud_service_network_interface(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, opts)



Get the specified network interface in a cloud service.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
cloud_service_name = 'cloud_service_name_example' # String | The name of the cloud service.
role_instance_name = 'role_instance_name_example' # String | The name of role instance.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.network_interfaces_get_cloud_service_network_interface(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_get_cloud_service_network_interface: #{e}"
end
```

#### Using the network_interfaces_get_cloud_service_network_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterface>, Integer, Hash)> network_interfaces_get_cloud_service_network_interface_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_get_cloud_service_network_interface_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterface>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_get_cloud_service_network_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **cloud_service_name** | **String** | The name of the cloud service. |  |
| **role_instance_name** | **String** | The name of role instance. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_get_effective_route_table

> <EffectiveRouteListResult> network_interfaces_get_effective_route_table(api_version, subscription_id, resource_group_name, network_interface_name)



Gets all route tables applied to a network interface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.

begin
  
  result = api_instance.network_interfaces_get_effective_route_table(api_version, subscription_id, resource_group_name, network_interface_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_get_effective_route_table: #{e}"
end
```

#### Using the network_interfaces_get_effective_route_table_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EffectiveRouteListResult>, Integer, Hash)> network_interfaces_get_effective_route_table_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_get_effective_route_table_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EffectiveRouteListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_get_effective_route_table_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |

### Return type

[**EffectiveRouteListResult**](EffectiveRouteListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_list

> <NetworkInterfaceListResult> network_interfaces_list(api_version, subscription_id, resource_group_name)



Gets all network interfaces in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.network_interfaces_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list: #{e}"
end
```

#### Using the network_interfaces_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceListResult>, Integer, Hash)> network_interfaces_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**NetworkInterfaceListResult**](NetworkInterfaceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_list_all

> <NetworkInterfaceListResult> network_interfaces_list_all(api_version, subscription_id)



Gets all network interfaces in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.network_interfaces_list_all(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list_all: #{e}"
end
```

#### Using the network_interfaces_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceListResult>, Integer, Hash)> network_interfaces_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**NetworkInterfaceListResult**](NetworkInterfaceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_list_cloud_service_network_interfaces

> <NetworkInterfaceListResult> network_interfaces_list_cloud_service_network_interfaces(api_version, subscription_id, resource_group_name, cloud_service_name)



Gets all network interfaces in a cloud service.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
cloud_service_name = 'cloud_service_name_example' # String | The name of the cloud service.

begin
  
  result = api_instance.network_interfaces_list_cloud_service_network_interfaces(api_version, subscription_id, resource_group_name, cloud_service_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list_cloud_service_network_interfaces: #{e}"
end
```

#### Using the network_interfaces_list_cloud_service_network_interfaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceListResult>, Integer, Hash)> network_interfaces_list_cloud_service_network_interfaces_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_list_cloud_service_network_interfaces_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list_cloud_service_network_interfaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **cloud_service_name** | **String** | The name of the cloud service. |  |

### Return type

[**NetworkInterfaceListResult**](NetworkInterfaceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_list_cloud_service_role_instance_network_interfaces

> <NetworkInterfaceListResult> network_interfaces_list_cloud_service_role_instance_network_interfaces(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name)



Gets information about all network interfaces in a role instance in a cloud service.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
cloud_service_name = 'cloud_service_name_example' # String | The name of the cloud service.
role_instance_name = 'role_instance_name_example' # String | The name of role instance.

begin
  
  result = api_instance.network_interfaces_list_cloud_service_role_instance_network_interfaces(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list_cloud_service_role_instance_network_interfaces: #{e}"
end
```

#### Using the network_interfaces_list_cloud_service_role_instance_network_interfaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterfaceListResult>, Integer, Hash)> network_interfaces_list_cloud_service_role_instance_network_interfaces_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_list_cloud_service_role_instance_network_interfaces_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterfaceListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list_cloud_service_role_instance_network_interfaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **cloud_service_name** | **String** | The name of the cloud service. |  |
| **role_instance_name** | **String** | The name of role instance. |  |

### Return type

[**NetworkInterfaceListResult**](NetworkInterfaceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_list_effective_network_security_groups

> <EffectiveNetworkSecurityGroupListResult> network_interfaces_list_effective_network_security_groups(api_version, subscription_id, resource_group_name, network_interface_name)



Gets all network security groups applied to a network interface.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.

begin
  
  result = api_instance.network_interfaces_list_effective_network_security_groups(api_version, subscription_id, resource_group_name, network_interface_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list_effective_network_security_groups: #{e}"
end
```

#### Using the network_interfaces_list_effective_network_security_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EffectiveNetworkSecurityGroupListResult>, Integer, Hash)> network_interfaces_list_effective_network_security_groups_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_list_effective_network_security_groups_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EffectiveNetworkSecurityGroupListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_list_effective_network_security_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |

### Return type

[**EffectiveNetworkSecurityGroupListResult**](EffectiveNetworkSecurityGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_interfaces_update_tags

> <NetworkInterface> network_interfaces_update_tags(api_version, subscription_id, resource_group_name, network_interface_name, parameters)



Updates a network interface tags.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::NetworkInterfacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
parameters = AzureSDK::TagsObject.new # TagsObject | Parameters supplied to update network interface tags.

begin
  
  result = api_instance.network_interfaces_update_tags(api_version, subscription_id, resource_group_name, network_interface_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_update_tags: #{e}"
end
```

#### Using the network_interfaces_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkInterface>, Integer, Hash)> network_interfaces_update_tags_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.network_interfaces_update_tags_with_http_info(api_version, subscription_id, resource_group_name, network_interface_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkInterface>
rescue AzureSDK::ApiError => e
  puts "Error when calling NetworkInterfacesApi->network_interfaces_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update network interface tags. |  |

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


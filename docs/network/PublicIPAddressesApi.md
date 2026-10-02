# AzureSDK::PublicIPAddressesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**public_ip_addresses_create_or_update**](PublicIPAddressesApi.md#public_ip_addresses_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName} |  |
| [**public_ip_addresses_ddos_protection_status**](PublicIPAddressesApi.md#public_ip_addresses_ddos_protection_status) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName}/ddosProtectionStatus |  |
| [**public_ip_addresses_delete**](PublicIPAddressesApi.md#public_ip_addresses_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName} |  |
| [**public_ip_addresses_disassociate_cloud_service_reserved_public_ip**](PublicIPAddressesApi.md#public_ip_addresses_disassociate_cloud_service_reserved_public_ip) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName}/disassociateCloudServiceReservedPublicIp |  |
| [**public_ip_addresses_get**](PublicIPAddressesApi.md#public_ip_addresses_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName} |  |
| [**public_ip_addresses_list**](PublicIPAddressesApi.md#public_ip_addresses_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses |  |
| [**public_ip_addresses_list_all**](PublicIPAddressesApi.md#public_ip_addresses_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/publicIPAddresses |  |
| [**public_ip_addresses_reserve_cloud_service_public_ip_address**](PublicIPAddressesApi.md#public_ip_addresses_reserve_cloud_service_public_ip_address) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName}/reserveCloudServicePublicIpAddress |  |
| [**public_ip_addresses_update_tags**](PublicIPAddressesApi.md#public_ip_addresses_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName} |  |


## public_ip_addresses_create_or_update

> <PublicIPAddress> public_ip_addresses_create_or_update(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)



Creates or updates a static or dynamic public IP address.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PublicIPAddressesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_address_name = 'public_ip_address_name_example' # String | The name of the public IP address.
parameters = AzureSDK::PublicIPAddress.new # PublicIPAddress | Parameters supplied to the create or update public IP address operation.

begin
  
  result = api_instance.public_ip_addresses_create_or_update(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_create_or_update: #{e}"
end
```

#### Using the public_ip_addresses_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddress>, Integer, Hash)> public_ip_addresses_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddress>
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_address_name** | **String** | The name of the public IP address. |  |
| **parameters** | [**PublicIPAddress**](PublicIPAddress.md) | Parameters supplied to the create or update public IP address operation. |  |

### Return type

[**PublicIPAddress**](PublicIPAddress.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## public_ip_addresses_ddos_protection_status

> <PublicIpDdosProtectionStatusResult> public_ip_addresses_ddos_protection_status(api_version, subscription_id, resource_group_name, public_ip_address_name)



Gets the Ddos Protection Status of a Public IP Address

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PublicIPAddressesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_address_name = 'public_ip_address_name_example' # String | The name of the public IP address.

begin
  
  result = api_instance.public_ip_addresses_ddos_protection_status(api_version, subscription_id, resource_group_name, public_ip_address_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_ddos_protection_status: #{e}"
end
```

#### Using the public_ip_addresses_ddos_protection_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIpDdosProtectionStatusResult>, Integer, Hash)> public_ip_addresses_ddos_protection_status_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_ddos_protection_status_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIpDdosProtectionStatusResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_ddos_protection_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_address_name** | **String** | The name of the public IP address. |  |

### Return type

[**PublicIpDdosProtectionStatusResult**](PublicIpDdosProtectionStatusResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_addresses_delete

> public_ip_addresses_delete(api_version, subscription_id, resource_group_name, public_ip_address_name)



Deletes the specified public IP address.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PublicIPAddressesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_address_name = 'public_ip_address_name_example' # String | The name of the public IP address.

begin
  
  api_instance.public_ip_addresses_delete(api_version, subscription_id, resource_group_name, public_ip_address_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_delete: #{e}"
end
```

#### Using the public_ip_addresses_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> public_ip_addresses_delete_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_delete_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_address_name** | **String** | The name of the public IP address. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_addresses_disassociate_cloud_service_reserved_public_ip

> <PublicIPAddress> public_ip_addresses_disassociate_cloud_service_reserved_public_ip(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)



Disassociates the Cloud Service reserved Public IP and associates the specified Standalone Public IP to the same Cloud Service frontend.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PublicIPAddressesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_address_name = 'public_ip_address_name_example' # String | The name of the public IP address.
parameters = AzureSDK::DisassociateCloudServicePublicIpRequest.new({public_ip_arm_id: 'public_ip_arm_id_example'}) # DisassociateCloudServicePublicIpRequest | Parameter that define which Public IP Address should be associated in place of given Public IP Address.

begin
  
  result = api_instance.public_ip_addresses_disassociate_cloud_service_reserved_public_ip(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_disassociate_cloud_service_reserved_public_ip: #{e}"
end
```

#### Using the public_ip_addresses_disassociate_cloud_service_reserved_public_ip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddress>, Integer, Hash)> public_ip_addresses_disassociate_cloud_service_reserved_public_ip_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_disassociate_cloud_service_reserved_public_ip_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddress>
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_disassociate_cloud_service_reserved_public_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_address_name** | **String** | The name of the public IP address. |  |
| **parameters** | [**DisassociateCloudServicePublicIpRequest**](DisassociateCloudServicePublicIpRequest.md) | Parameter that define which Public IP Address should be associated in place of given Public IP Address. |  |

### Return type

[**PublicIPAddress**](PublicIPAddress.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## public_ip_addresses_get

> <PublicIPAddress> public_ip_addresses_get(api_version, subscription_id, resource_group_name, public_ip_address_name, opts)



Gets the specified public IP address in a specified resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PublicIPAddressesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_address_name = 'public_ip_address_name_example' # String | The name of the public IP address.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.public_ip_addresses_get(api_version, subscription_id, resource_group_name, public_ip_address_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_get: #{e}"
end
```

#### Using the public_ip_addresses_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddress>, Integer, Hash)> public_ip_addresses_get_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_get_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddress>
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_address_name** | **String** | The name of the public IP address. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**PublicIPAddress**](PublicIPAddress.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_addresses_list

> <PublicIPAddressListResult> public_ip_addresses_list(api_version, subscription_id, resource_group_name)



Gets all public IP addresses in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PublicIPAddressesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.public_ip_addresses_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_list: #{e}"
end
```

#### Using the public_ip_addresses_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddressListResult>, Integer, Hash)> public_ip_addresses_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddressListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**PublicIPAddressListResult**](PublicIPAddressListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_addresses_list_all

> <PublicIPAddressListResult> public_ip_addresses_list_all(api_version, subscription_id)



Gets all the public IP addresses in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PublicIPAddressesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.public_ip_addresses_list_all(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_list_all: #{e}"
end
```

#### Using the public_ip_addresses_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddressListResult>, Integer, Hash)> public_ip_addresses_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddressListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**PublicIPAddressListResult**](PublicIPAddressListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_addresses_reserve_cloud_service_public_ip_address

> <PublicIPAddress> public_ip_addresses_reserve_cloud_service_public_ip_address(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)



Reserves the specified Cloud Service Public IP by switching its allocation method to Static. If rollback is requested, reverts the allocation method to Dynamic.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PublicIPAddressesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_address_name = 'public_ip_address_name_example' # String | The name of the public IP address.
parameters = AzureSDK::ReserveCloudServicePublicIpAddressRequest.new({is_rollback: AzureSDK::IsRollback::TRUE}) # ReserveCloudServicePublicIpAddressRequest | Parameter that define which Public IP Address should be associated in place of given Public IP Address.

begin
  
  result = api_instance.public_ip_addresses_reserve_cloud_service_public_ip_address(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_reserve_cloud_service_public_ip_address: #{e}"
end
```

#### Using the public_ip_addresses_reserve_cloud_service_public_ip_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddress>, Integer, Hash)> public_ip_addresses_reserve_cloud_service_public_ip_address_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_reserve_cloud_service_public_ip_address_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddress>
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_reserve_cloud_service_public_ip_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_address_name** | **String** | The name of the public IP address. |  |
| **parameters** | [**ReserveCloudServicePublicIpAddressRequest**](ReserveCloudServicePublicIpAddressRequest.md) | Parameter that define which Public IP Address should be associated in place of given Public IP Address. |  |

### Return type

[**PublicIPAddress**](PublicIPAddress.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## public_ip_addresses_update_tags

> <PublicIPAddress> public_ip_addresses_update_tags(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)



Updates public IP address tags.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::PublicIPAddressesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
public_ip_address_name = 'public_ip_address_name_example' # String | The name of the public IP address.
parameters = AzureSDK::TagsObject.new # TagsObject | Parameters supplied to update public IP address tags.

begin
  
  result = api_instance.public_ip_addresses_update_tags(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_update_tags: #{e}"
end
```

#### Using the public_ip_addresses_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddress>, Integer, Hash)> public_ip_addresses_update_tags_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_update_tags_with_http_info(api_version, subscription_id, resource_group_name, public_ip_address_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddress>
rescue AzureSDK::ApiError => e
  puts "Error when calling PublicIPAddressesApi->public_ip_addresses_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **public_ip_address_name** | **String** | The name of the public IP address. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update public IP address tags. |  |

### Return type

[**PublicIPAddress**](PublicIPAddress.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


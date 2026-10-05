# AzureRest::ManagedHsmKeysApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**managed_hsm_keys_create_if_not_exist**](ManagedHsmKeysApi.md#managed_hsm_keys_create_if_not_exist) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/keys/{keyName} |  |
| [**managed_hsm_keys_get**](ManagedHsmKeysApi.md#managed_hsm_keys_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/keys/{keyName} |  |
| [**managed_hsm_keys_list**](ManagedHsmKeysApi.md#managed_hsm_keys_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/keys |  |


## managed_hsm_keys_create_if_not_exist

> <ManagedHsmKey> managed_hsm_keys_create_if_not_exist(api_version, subscription_id, resource_group_name, name, key_name, parameters)



Creates the first version of a new key if it does not exist. If it already exists, then the existing key is returned without any write operations being performed. This API does not create subsequent versions, and does not update existing keys.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the Managed HSM Pool within the specified resource group.
key_name = 'key_name_example' # String | The name of the key to be created. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information.
parameters = AzureRest::ManagedHsmKeyCreateParameters.new({properties: AzureRest::ManagedHsmKeyProperties.new}) # ManagedHsmKeyCreateParameters | The parameters used to create the specified key.

begin
  
  result = api_instance.managed_hsm_keys_create_if_not_exist(api_version, subscription_id, resource_group_name, name, key_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeysApi->managed_hsm_keys_create_if_not_exist: #{e}"
end
```

#### Using the managed_hsm_keys_create_if_not_exist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsmKey>, Integer, Hash)> managed_hsm_keys_create_if_not_exist_with_http_info(api_version, subscription_id, resource_group_name, name, key_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsm_keys_create_if_not_exist_with_http_info(api_version, subscription_id, resource_group_name, name, key_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsmKey>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeysApi->managed_hsm_keys_create_if_not_exist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the Managed HSM Pool within the specified resource group. |  |
| **key_name** | **String** | The name of the key to be created. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information. |  |
| **parameters** | [**ManagedHsmKeyCreateParameters**](ManagedHsmKeyCreateParameters.md) | The parameters used to create the specified key. |  |

### Return type

[**ManagedHsmKey**](ManagedHsmKey.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## managed_hsm_keys_get

> <ManagedHsmKey> managed_hsm_keys_get(api_version, subscription_id, resource_group_name, name, key_name)



Gets the current version of the specified key from the specified managed HSM.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the Managed HSM Pool within the specified resource group.
key_name = 'key_name_example' # String | The name of the key to be created. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information.

begin
  
  result = api_instance.managed_hsm_keys_get(api_version, subscription_id, resource_group_name, name, key_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeysApi->managed_hsm_keys_get: #{e}"
end
```

#### Using the managed_hsm_keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsmKey>, Integer, Hash)> managed_hsm_keys_get_with_http_info(api_version, subscription_id, resource_group_name, name, key_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsm_keys_get_with_http_info(api_version, subscription_id, resource_group_name, name, key_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsmKey>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeysApi->managed_hsm_keys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the Managed HSM Pool within the specified resource group. |  |
| **key_name** | **String** | The name of the key to be created. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information. |  |

### Return type

[**ManagedHsmKey**](ManagedHsmKey.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_hsm_keys_list

> <ManagedHsmKeyListResult> managed_hsm_keys_list(api_version, subscription_id, resource_group_name, name)



Lists the keys in the specified managed HSM.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the Managed HSM Pool within the specified resource group.

begin
  
  result = api_instance.managed_hsm_keys_list(api_version, subscription_id, resource_group_name, name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeysApi->managed_hsm_keys_list: #{e}"
end
```

#### Using the managed_hsm_keys_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsmKeyListResult>, Integer, Hash)> managed_hsm_keys_list_with_http_info(api_version, subscription_id, resource_group_name, name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsm_keys_list_with_http_info(api_version, subscription_id, resource_group_name, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsmKeyListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeysApi->managed_hsm_keys_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **name** | **String** | The name of the Managed HSM Pool within the specified resource group. |  |

### Return type

[**ManagedHsmKeyListResult**](ManagedHsmKeyListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


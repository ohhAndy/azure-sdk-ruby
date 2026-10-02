# AzureSDK::KeysApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**keys_create_if_not_exist**](KeysApi.md#keys_create_if_not_exist) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/keys/{keyName} |  |
| [**keys_get**](KeysApi.md#keys_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/keys/{keyName} |  |
| [**keys_list**](KeysApi.md#keys_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/keys |  |


## keys_create_if_not_exist

> <Key> keys_create_if_not_exist(api_version, subscription_id, resource_group_name, vault_name, key_name, parameters)



Creates the first version of a new key if it does not exist. If it already exists, then the existing key is returned without any write operations being performed. This API does not create subsequent versions, and does not update existing keys.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::KeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault which contains the key to be retrieved.
key_name = 'key_name_example' # String | The name of the key to be retrieved.
parameters = AzureSDK::KeyCreateParameters.new({properties: AzureSDK::KeyProperties.new}) # KeyCreateParameters | The parameters used to create the specified key.

begin
  
  result = api_instance.keys_create_if_not_exist(api_version, subscription_id, resource_group_name, vault_name, key_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling KeysApi->keys_create_if_not_exist: #{e}"
end
```

#### Using the keys_create_if_not_exist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Key>, Integer, Hash)> keys_create_if_not_exist_with_http_info(api_version, subscription_id, resource_group_name, vault_name, key_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.keys_create_if_not_exist_with_http_info(api_version, subscription_id, resource_group_name, vault_name, key_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Key>
rescue AzureSDK::ApiError => e
  puts "Error when calling KeysApi->keys_create_if_not_exist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault which contains the key to be retrieved. |  |
| **key_name** | **String** | The name of the key to be retrieved. |  |
| **parameters** | [**KeyCreateParameters**](KeyCreateParameters.md) | The parameters used to create the specified key. |  |

### Return type

[**Key**](Key.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## keys_get

> <Key> keys_get(api_version, subscription_id, resource_group_name, vault_name, key_name)



Gets the current version of the specified key from the specified key vault.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::KeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault which contains the key to be retrieved.
key_name = 'key_name_example' # String | The name of the key to be retrieved.

begin
  
  result = api_instance.keys_get(api_version, subscription_id, resource_group_name, vault_name, key_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling KeysApi->keys_get: #{e}"
end
```

#### Using the keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Key>, Integer, Hash)> keys_get_with_http_info(api_version, subscription_id, resource_group_name, vault_name, key_name)

```ruby
begin
  
  data, status_code, headers = api_instance.keys_get_with_http_info(api_version, subscription_id, resource_group_name, vault_name, key_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Key>
rescue AzureSDK::ApiError => e
  puts "Error when calling KeysApi->keys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault which contains the key to be retrieved. |  |
| **key_name** | **String** | The name of the key to be retrieved. |  |

### Return type

[**Key**](Key.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## keys_list

> <KeyListResult> keys_list(api_version, subscription_id, resource_group_name, vault_name)



Lists the keys in the specified key vault.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::KeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault which contains the key to be retrieved.

begin
  
  result = api_instance.keys_list(api_version, subscription_id, resource_group_name, vault_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling KeysApi->keys_list: #{e}"
end
```

#### Using the keys_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KeyListResult>, Integer, Hash)> keys_list_with_http_info(api_version, subscription_id, resource_group_name, vault_name)

```ruby
begin
  
  data, status_code, headers = api_instance.keys_list_with_http_info(api_version, subscription_id, resource_group_name, vault_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KeyListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling KeysApi->keys_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault which contains the key to be retrieved. |  |

### Return type

[**KeyListResult**](KeyListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


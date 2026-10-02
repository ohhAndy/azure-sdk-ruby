# AzureSDK::KeyOperationGroupApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**keys_get_version**](KeyOperationGroupApi.md#keys_get_version) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/keys/{keyName}/versions/{keyVersion} |  |
| [**keys_list_versions**](KeyOperationGroupApi.md#keys_list_versions) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/keys/{keyName}/versions |  |


## keys_get_version

> <Key> keys_get_version(api_version, subscription_id, resource_group_name, vault_name, key_name, key_version)



Gets the specified version of the specified key in the specified key vault.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::KeyOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault which contains the key version to be retrieved.
key_name = 'key_name_example' # String | The name of the key version to be retrieved.
key_version = 'key_version_example' # String | The version of the key to be retrieved.

begin
  
  result = api_instance.keys_get_version(api_version, subscription_id, resource_group_name, vault_name, key_name, key_version)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling KeyOperationGroupApi->keys_get_version: #{e}"
end
```

#### Using the keys_get_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Key>, Integer, Hash)> keys_get_version_with_http_info(api_version, subscription_id, resource_group_name, vault_name, key_name, key_version)

```ruby
begin
  
  data, status_code, headers = api_instance.keys_get_version_with_http_info(api_version, subscription_id, resource_group_name, vault_name, key_name, key_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Key>
rescue AzureSDK::ApiError => e
  puts "Error when calling KeyOperationGroupApi->keys_get_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault which contains the key version to be retrieved. |  |
| **key_name** | **String** | The name of the key version to be retrieved. |  |
| **key_version** | **String** | The version of the key to be retrieved. |  |

### Return type

[**Key**](Key.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## keys_list_versions

> <KeyListResult> keys_list_versions(api_version, subscription_id, resource_group_name, vault_name, key_name)



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

api_instance = AzureSDK::KeyOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault which contains the key version to be retrieved.
key_name = 'key_name_example' # String | The name of the key version to be retrieved.

begin
  
  result = api_instance.keys_list_versions(api_version, subscription_id, resource_group_name, vault_name, key_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling KeyOperationGroupApi->keys_list_versions: #{e}"
end
```

#### Using the keys_list_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KeyListResult>, Integer, Hash)> keys_list_versions_with_http_info(api_version, subscription_id, resource_group_name, vault_name, key_name)

```ruby
begin
  
  data, status_code, headers = api_instance.keys_list_versions_with_http_info(api_version, subscription_id, resource_group_name, vault_name, key_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KeyListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling KeyOperationGroupApi->keys_list_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault which contains the key version to be retrieved. |  |
| **key_name** | **String** | The name of the key version to be retrieved. |  |

### Return type

[**KeyListResult**](KeyListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


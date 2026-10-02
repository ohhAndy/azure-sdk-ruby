# AzureSDK::DeletedVaultsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**vaults_get_deleted**](DeletedVaultsApi.md#vaults_get_deleted) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/locations/{location}/deletedVaults/{vaultName} |  |
| [**vaults_purge_deleted**](DeletedVaultsApi.md#vaults_purge_deleted) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/locations/{location}/deletedVaults/{vaultName}/purge |  |


## vaults_get_deleted

> <DeletedVault> vaults_get_deleted(api_version, subscription_id, location, vault_name)



Gets the deleted Azure key vault.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DeletedVaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.
vault_name = 'vault_name_example' # String | The name of the vault.

begin
  
  result = api_instance.vaults_get_deleted(api_version, subscription_id, location, vault_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DeletedVaultsApi->vaults_get_deleted: #{e}"
end
```

#### Using the vaults_get_deleted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedVault>, Integer, Hash)> vaults_get_deleted_with_http_info(api_version, subscription_id, location, vault_name)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_get_deleted_with_http_info(api_version, subscription_id, location, vault_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedVault>
rescue AzureSDK::ApiError => e
  puts "Error when calling DeletedVaultsApi->vaults_get_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |
| **vault_name** | **String** | The name of the vault. |  |

### Return type

[**DeletedVault**](DeletedVault.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vaults_purge_deleted

> vaults_purge_deleted(api_version, subscription_id, location, vault_name)



Permanently deletes the specified vault. aka Purges the deleted Azure key vault.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DeletedVaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.
vault_name = 'vault_name_example' # String | The name of the vault.

begin
  
  api_instance.vaults_purge_deleted(api_version, subscription_id, location, vault_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling DeletedVaultsApi->vaults_purge_deleted: #{e}"
end
```

#### Using the vaults_purge_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> vaults_purge_deleted_with_http_info(api_version, subscription_id, location, vault_name)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_purge_deleted_with_http_info(api_version, subscription_id, location, vault_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DeletedVaultsApi->vaults_purge_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |
| **vault_name** | **String** | The name of the vault. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


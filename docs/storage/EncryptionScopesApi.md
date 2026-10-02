# AzureSDK::EncryptionScopesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**encryption_scopes_get**](EncryptionScopesApi.md#encryption_scopes_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/encryptionScopes/{encryptionScopeName} |  |
| [**encryption_scopes_list**](EncryptionScopesApi.md#encryption_scopes_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/encryptionScopes |  |
| [**encryption_scopes_patch**](EncryptionScopesApi.md#encryption_scopes_patch) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/encryptionScopes/{encryptionScopeName} |  |
| [**encryption_scopes_put**](EncryptionScopesApi.md#encryption_scopes_put) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/encryptionScopes/{encryptionScopeName} |  |


## encryption_scopes_get

> <EncryptionScope> encryption_scopes_get(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name)



Returns the properties for the specified encryption scope.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::EncryptionScopesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
encryption_scope_name = 'encryption_scope_name_example' # String | The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.

begin
  
  result = api_instance.encryption_scopes_get(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling EncryptionScopesApi->encryption_scopes_get: #{e}"
end
```

#### Using the encryption_scopes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionScope>, Integer, Hash)> encryption_scopes_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name)

```ruby
begin
  
  data, status_code, headers = api_instance.encryption_scopes_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionScope>
rescue AzureSDK::ApiError => e
  puts "Error when calling EncryptionScopesApi->encryption_scopes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **encryption_scope_name** | **String** | The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |

### Return type

[**EncryptionScope**](EncryptionScope.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## encryption_scopes_list

> <EncryptionScopeListResult> encryption_scopes_list(api_version, subscription_id, resource_group_name, account_name, opts)



Lists all the encryption scopes available under the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::EncryptionScopesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  maxpagesize: 56, # Integer | Optional, specifies the maximum number of encryption scopes that will be included in the list response.
  filter: 'filter_example', # String | Optional. When specified, only encryption scope names starting with the filter will be listed.
  include: 'All' # String | Optional, when specified, will list encryption scopes with the specific state. Defaults to All
}

begin
  
  result = api_instance.encryption_scopes_list(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling EncryptionScopesApi->encryption_scopes_list: #{e}"
end
```

#### Using the encryption_scopes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionScopeListResult>, Integer, Hash)> encryption_scopes_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.encryption_scopes_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionScopeListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling EncryptionScopesApi->encryption_scopes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **maxpagesize** | **Integer** | Optional, specifies the maximum number of encryption scopes that will be included in the list response. | [optional] |
| **filter** | **String** | Optional. When specified, only encryption scope names starting with the filter will be listed. | [optional] |
| **include** | **String** | Optional, when specified, will list encryption scopes with the specific state. Defaults to All | [optional] |

### Return type

[**EncryptionScopeListResult**](EncryptionScopeListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## encryption_scopes_patch

> <EncryptionScope> encryption_scopes_patch(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name, encryption_scope)



Update encryption scope properties as specified in the request body. Update fails if the specified encryption scope does not already exist.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::EncryptionScopesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
encryption_scope_name = 'encryption_scope_name_example' # String | The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
encryption_scope = AzureSDK::EncryptionScope.new # EncryptionScope | Encryption scope properties to be used for the update.

begin
  
  result = api_instance.encryption_scopes_patch(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name, encryption_scope)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling EncryptionScopesApi->encryption_scopes_patch: #{e}"
end
```

#### Using the encryption_scopes_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionScope>, Integer, Hash)> encryption_scopes_patch_with_http_info(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name, encryption_scope)

```ruby
begin
  
  data, status_code, headers = api_instance.encryption_scopes_patch_with_http_info(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name, encryption_scope)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionScope>
rescue AzureSDK::ApiError => e
  puts "Error when calling EncryptionScopesApi->encryption_scopes_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **encryption_scope_name** | **String** | The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **encryption_scope** | [**EncryptionScope**](EncryptionScope.md) | Encryption scope properties to be used for the update. |  |

### Return type

[**EncryptionScope**](EncryptionScope.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## encryption_scopes_put

> <EncryptionScope> encryption_scopes_put(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name, encryption_scope)



Synchronously creates or updates an encryption scope under the specified storage account. If an encryption scope is already created and a subsequent request is issued with different properties, the encryption scope properties will be updated per the specified request.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::EncryptionScopesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
encryption_scope_name = 'encryption_scope_name_example' # String | The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
encryption_scope = AzureSDK::EncryptionScope.new # EncryptionScope | Encryption scope properties to be used for the create or update.

begin
  
  result = api_instance.encryption_scopes_put(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name, encryption_scope)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling EncryptionScopesApi->encryption_scopes_put: #{e}"
end
```

#### Using the encryption_scopes_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionScope>, Integer, Hash)> encryption_scopes_put_with_http_info(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name, encryption_scope)

```ruby
begin
  
  data, status_code, headers = api_instance.encryption_scopes_put_with_http_info(api_version, subscription_id, resource_group_name, account_name, encryption_scope_name, encryption_scope)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionScope>
rescue AzureSDK::ApiError => e
  puts "Error when calling EncryptionScopesApi->encryption_scopes_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **encryption_scope_name** | **String** | The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **encryption_scope** | [**EncryptionScope**](EncryptionScope.md) | Encryption scope properties to be used for the create or update. |  |

### Return type

[**EncryptionScope**](EncryptionScope.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


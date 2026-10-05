# AzureRest::SecretsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**secrets_create_or_update**](SecretsApi.md#secrets_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/secrets/{secretName} |  |
| [**secrets_get**](SecretsApi.md#secrets_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/secrets/{secretName} |  |
| [**secrets_list**](SecretsApi.md#secrets_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/secrets |  |
| [**secrets_update**](SecretsApi.md#secrets_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/secrets/{secretName} |  |


## secrets_create_or_update

> <Secret> secrets_create_or_update(api_version, subscription_id, resource_group_name, vault_name, secret_name, parameters)



Create or update a secret in a key vault in the specified subscription.  NOTE: This API is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecretsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault.
secret_name = 'secret_name_example' # String | The name of the secret.
parameters = AzureRest::SecretCreateOrUpdateParameters.new({properties: AzureRest::SecretProperties.new}) # SecretCreateOrUpdateParameters | Parameters to create or update the secret

begin
  
  result = api_instance.secrets_create_or_update(api_version, subscription_id, resource_group_name, vault_name, secret_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecretsApi->secrets_create_or_update: #{e}"
end
```

#### Using the secrets_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Secret>, Integer, Hash)> secrets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vault_name, secret_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.secrets_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vault_name, secret_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Secret>
rescue AzureRest::ApiError => e
  puts "Error when calling SecretsApi->secrets_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |
| **secret_name** | **String** | The name of the secret. |  |
| **parameters** | [**SecretCreateOrUpdateParameters**](SecretCreateOrUpdateParameters.md) | Parameters to create or update the secret |  |

### Return type

[**Secret**](Secret.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## secrets_get

> <Secret> secrets_get(api_version, subscription_id, resource_group_name, vault_name, secret_name)



Gets the specified secret.  NOTE: This API is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecretsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault.
secret_name = 'secret_name_example' # String | The name of the secret.

begin
  
  result = api_instance.secrets_get(api_version, subscription_id, resource_group_name, vault_name, secret_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecretsApi->secrets_get: #{e}"
end
```

#### Using the secrets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Secret>, Integer, Hash)> secrets_get_with_http_info(api_version, subscription_id, resource_group_name, vault_name, secret_name)

```ruby
begin
  
  data, status_code, headers = api_instance.secrets_get_with_http_info(api_version, subscription_id, resource_group_name, vault_name, secret_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Secret>
rescue AzureRest::ApiError => e
  puts "Error when calling SecretsApi->secrets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |
| **secret_name** | **String** | The name of the secret. |  |

### Return type

[**Secret**](Secret.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## secrets_list

> <SecretListResult> secrets_list(api_version, subscription_id, resource_group_name, vault_name, opts)



The List operation gets information about the secrets in a vault.  NOTE: This API is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecretsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault.
opts = {
  top: 56 # Integer | Maximum number of results to return.
}

begin
  
  result = api_instance.secrets_list(api_version, subscription_id, resource_group_name, vault_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecretsApi->secrets_list: #{e}"
end
```

#### Using the secrets_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecretListResult>, Integer, Hash)> secrets_list_with_http_info(api_version, subscription_id, resource_group_name, vault_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.secrets_list_with_http_info(api_version, subscription_id, resource_group_name, vault_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecretListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling SecretsApi->secrets_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |
| **top** | **Integer** | Maximum number of results to return. | [optional] |

### Return type

[**SecretListResult**](SecretListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## secrets_update

> <Secret> secrets_update(api_version, subscription_id, resource_group_name, vault_name, secret_name, parameters)



Update a secret in the specified subscription.  NOTE: This API is intended for internal use in ARM deployments.  Users should use the data-plane REST service for interaction with vault secrets.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecretsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault.
secret_name = 'secret_name_example' # String | The name of the secret.
parameters = AzureRest::SecretPatchParameters.new # SecretPatchParameters | Parameters to patch the secret

begin
  
  result = api_instance.secrets_update(api_version, subscription_id, resource_group_name, vault_name, secret_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecretsApi->secrets_update: #{e}"
end
```

#### Using the secrets_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Secret>, Integer, Hash)> secrets_update_with_http_info(api_version, subscription_id, resource_group_name, vault_name, secret_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.secrets_update_with_http_info(api_version, subscription_id, resource_group_name, vault_name, secret_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Secret>
rescue AzureRest::ApiError => e
  puts "Error when calling SecretsApi->secrets_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |
| **secret_name** | **String** | The name of the secret. |  |
| **parameters** | [**SecretPatchParameters**](SecretPatchParameters.md) | Parameters to patch the secret |  |

### Return type

[**Secret**](Secret.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


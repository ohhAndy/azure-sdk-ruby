# AzureRest::VaultsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_link_resources_list_by_vault**](VaultsApi.md#private_link_resources_list_by_vault) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/privateLinkResources |  |
| [**vaults_create_or_update**](VaultsApi.md#vaults_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName} |  |
| [**vaults_delete**](VaultsApi.md#vaults_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName} |  |
| [**vaults_get**](VaultsApi.md#vaults_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName} |  |
| [**vaults_list_by_resource_group**](VaultsApi.md#vaults_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults |  |
| [**vaults_list_by_subscription**](VaultsApi.md#vaults_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/vaults |  |
| [**vaults_update**](VaultsApi.md#vaults_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName} |  |
| [**vaults_update_access_policy**](VaultsApi.md#vaults_update_access_policy) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/accessPolicies/{operationKind} |  |


## private_link_resources_list_by_vault

> <PrivateLinkResourceListResult> private_link_resources_list_by_vault(api_version, subscription_id, resource_group_name, vault_name)



Gets the private link resources supported for the key vault.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault.

begin
  
  result = api_instance.private_link_resources_list_by_vault(api_version, subscription_id, resource_group_name, vault_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->private_link_resources_list_by_vault: #{e}"
end
```

#### Using the private_link_resources_list_by_vault_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkResourceListResult>, Integer, Hash)> private_link_resources_list_by_vault_with_http_info(api_version, subscription_id, resource_group_name, vault_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_resources_list_by_vault_with_http_info(api_version, subscription_id, resource_group_name, vault_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkResourceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->private_link_resources_list_by_vault_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |

### Return type

[**PrivateLinkResourceListResult**](PrivateLinkResourceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vaults_create_or_update

> <Vault> vaults_create_or_update(api_version, subscription_id, resource_group_name, vault_name, parameters)



Create or update a key vault in the specified subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault.
parameters = AzureRest::VaultCreateOrUpdateParameters.new({location: 'location_example', properties: AzureRest::VaultProperties.new({tenant_id: 'tenant_id_example', sku: AzureRest::Sku.new({family: AzureRest::SkuFamily::A, name: AzureRest::SkuName::STANDARD})})}) # VaultCreateOrUpdateParameters | Parameters to create or update the vault

begin
  
  result = api_instance.vaults_create_or_update(api_version, subscription_id, resource_group_name, vault_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_create_or_update: #{e}"
end
```

#### Using the vaults_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Vault>, Integer, Hash)> vaults_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vault_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, vault_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Vault>
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |
| **parameters** | [**VaultCreateOrUpdateParameters**](VaultCreateOrUpdateParameters.md) | Parameters to create or update the vault |  |

### Return type

[**Vault**](Vault.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## vaults_delete

> vaults_delete(api_version, subscription_id, resource_group_name, vault_name)



Deletes the specified Azure key vault.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault.

begin
  
  api_instance.vaults_delete(api_version, subscription_id, resource_group_name, vault_name)
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_delete: #{e}"
end
```

#### Using the vaults_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> vaults_delete_with_http_info(api_version, subscription_id, resource_group_name, vault_name)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_delete_with_http_info(api_version, subscription_id, resource_group_name, vault_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vaults_get

> <Vault> vaults_get(api_version, subscription_id, resource_group_name, vault_name)



Gets the specified Azure key vault.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault.

begin
  
  result = api_instance.vaults_get(api_version, subscription_id, resource_group_name, vault_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_get: #{e}"
end
```

#### Using the vaults_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Vault>, Integer, Hash)> vaults_get_with_http_info(api_version, subscription_id, resource_group_name, vault_name)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_get_with_http_info(api_version, subscription_id, resource_group_name, vault_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Vault>
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |

### Return type

[**Vault**](Vault.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vaults_list_by_resource_group

> <VaultListResult> vaults_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)



The List operation gets information about the vaults associated with the subscription and within the specified resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
opts = {
  top: 56 # Integer | Maximum number of results to return.
}

begin
  
  result = api_instance.vaults_list_by_resource_group(api_version, subscription_id, resource_group_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_list_by_resource_group: #{e}"
end
```

#### Using the vaults_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VaultListResult>, Integer, Hash)> vaults_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VaultListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **top** | **Integer** | Maximum number of results to return. | [optional] |

### Return type

[**VaultListResult**](VaultListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vaults_list_by_subscription

> <VaultListResult> vaults_list_by_subscription(api_version, subscription_id, opts)



The List operation gets information about the vaults associated with the subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
opts = {
  top: 56 # Integer | Maximum number of results to return.
}

begin
  
  result = api_instance.vaults_list_by_subscription(api_version, subscription_id, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_list_by_subscription: #{e}"
end
```

#### Using the vaults_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VaultListResult>, Integer, Hash)> vaults_list_by_subscription_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_list_by_subscription_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VaultListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **top** | **Integer** | Maximum number of results to return. | [optional] |

### Return type

[**VaultListResult**](VaultListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vaults_update

> <Vault> vaults_update(api_version, subscription_id, resource_group_name, vault_name, parameters)



Update a key vault in the specified subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | The name of the vault.
parameters = AzureRest::VaultPatchParameters.new # VaultPatchParameters | Parameters to patch the vault

begin
  
  result = api_instance.vaults_update(api_version, subscription_id, resource_group_name, vault_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_update: #{e}"
end
```

#### Using the vaults_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Vault>, Integer, Hash)> vaults_update_with_http_info(api_version, subscription_id, resource_group_name, vault_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_update_with_http_info(api_version, subscription_id, resource_group_name, vault_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Vault>
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | The name of the vault. |  |
| **parameters** | [**VaultPatchParameters**](VaultPatchParameters.md) | Parameters to patch the vault |  |

### Return type

[**Vault**](Vault.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## vaults_update_access_policy

> <VaultAccessPolicyParameters> vaults_update_access_policy(api_version, subscription_id, resource_group_name, vault_name, operation_kind, parameters)



Update access policies in a key vault in the specified subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VaultsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
vault_name = 'vault_name_example' # String | Name of the vault
operation_kind = 'add' # String | Name of the operation
parameters = AzureRest::VaultAccessPolicyParameters.new({properties: AzureRest::VaultAccessPolicyProperties.new({access_policies: [AzureRest::AccessPolicyEntry.new({tenant_id: 'tenant_id_example', object_id: 'object_id_example', permissions: AzureRest::Permissions.new})]})}) # VaultAccessPolicyParameters | Access policy to merge into the vault

begin
  
  result = api_instance.vaults_update_access_policy(api_version, subscription_id, resource_group_name, vault_name, operation_kind, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_update_access_policy: #{e}"
end
```

#### Using the vaults_update_access_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VaultAccessPolicyParameters>, Integer, Hash)> vaults_update_access_policy_with_http_info(api_version, subscription_id, resource_group_name, vault_name, operation_kind, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_update_access_policy_with_http_info(api_version, subscription_id, resource_group_name, vault_name, operation_kind, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VaultAccessPolicyParameters>
rescue AzureRest::ApiError => e
  puts "Error when calling VaultsApi->vaults_update_access_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **vault_name** | **String** | Name of the vault |  |
| **operation_kind** | **String** | Name of the operation |  |
| **parameters** | [**VaultAccessPolicyParameters**](VaultAccessPolicyParameters.md) | Access policy to merge into the vault |  |

### Return type

[**VaultAccessPolicyParameters**](VaultAccessPolicyParameters.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


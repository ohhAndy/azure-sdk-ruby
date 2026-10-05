# AzureRest::DefaultApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**managed_hsms_check_mhsm_name_availability**](DefaultApi.md#managed_hsms_check_mhsm_name_availability) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/checkMhsmNameAvailability |  |
| [**managed_hsms_list_deleted**](DefaultApi.md#managed_hsms_list_deleted) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/deletedManagedHSMs |  |
| [**vaults_check_name_availability**](DefaultApi.md#vaults_check_name_availability) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/checkNameAvailability |  |
| [**vaults_list**](DefaultApi.md#vaults_list) | **GET** /subscriptions/{subscriptionId}/resources |  |
| [**vaults_list_deleted**](DefaultApi.md#vaults_list_deleted) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/deletedVaults |  |


## managed_hsms_check_mhsm_name_availability

> <CheckMhsmNameAvailabilityResult> managed_hsms_check_mhsm_name_availability(api_version, subscription_id, mhsm_name)



Checks that the managed hsm name is valid and is not already in use.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
mhsm_name = AzureRest::CheckMhsmNameAvailabilityParameters.new({name: 'name_example'}) # CheckMhsmNameAvailabilityParameters | The request body

begin
  
  result = api_instance.managed_hsms_check_mhsm_name_availability(api_version, subscription_id, mhsm_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->managed_hsms_check_mhsm_name_availability: #{e}"
end
```

#### Using the managed_hsms_check_mhsm_name_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckMhsmNameAvailabilityResult>, Integer, Hash)> managed_hsms_check_mhsm_name_availability_with_http_info(api_version, subscription_id, mhsm_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_check_mhsm_name_availability_with_http_info(api_version, subscription_id, mhsm_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckMhsmNameAvailabilityResult>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->managed_hsms_check_mhsm_name_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **mhsm_name** | [**CheckMhsmNameAvailabilityParameters**](CheckMhsmNameAvailabilityParameters.md) | The request body |  |

### Return type

[**CheckMhsmNameAvailabilityResult**](CheckMhsmNameAvailabilityResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## managed_hsms_list_deleted

> <DeletedManagedHsmListResult> managed_hsms_list_deleted(api_version, subscription_id)



The List operation gets information about the deleted managed HSMs associated with the subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.managed_hsms_list_deleted(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->managed_hsms_list_deleted: #{e}"
end
```

#### Using the managed_hsms_list_deleted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedManagedHsmListResult>, Integer, Hash)> managed_hsms_list_deleted_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_list_deleted_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedManagedHsmListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->managed_hsms_list_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**DeletedManagedHsmListResult**](DeletedManagedHsmListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vaults_check_name_availability

> <CheckNameAvailabilityResult> vaults_check_name_availability(api_version, subscription_id, vault_name)



Checks that the vault name is valid and is not already in use.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
vault_name = AzureRest::VaultCheckNameAvailabilityParameters.new({name: 'name_example', type: 'Microsoft.KeyVault/vaults'}) # VaultCheckNameAvailabilityParameters | The name of the vault.

begin
  
  result = api_instance.vaults_check_name_availability(api_version, subscription_id, vault_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->vaults_check_name_availability: #{e}"
end
```

#### Using the vaults_check_name_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckNameAvailabilityResult>, Integer, Hash)> vaults_check_name_availability_with_http_info(api_version, subscription_id, vault_name)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_check_name_availability_with_http_info(api_version, subscription_id, vault_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckNameAvailabilityResult>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->vaults_check_name_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **vault_name** | [**VaultCheckNameAvailabilityParameters**](VaultCheckNameAvailabilityParameters.md) | The name of the vault. |  |

### Return type

[**CheckNameAvailabilityResult**](CheckNameAvailabilityResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## vaults_list

> <ResourceListResult> vaults_list(filter, api_version, subscription_id, opts)



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

api_instance = AzureRest::DefaultApi.new
filter = 'resourceType eq 'Microsoft.KeyVault/vaults'' # String | The filter to apply on the operation.
api_version = '2015-11-01' # String | Azure Resource Manager Api Version.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
opts = {
  top: 56 # Integer | Maximum number of results to return.
}

begin
  
  result = api_instance.vaults_list(filter, api_version, subscription_id, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->vaults_list: #{e}"
end
```

#### Using the vaults_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceListResult>, Integer, Hash)> vaults_list_with_http_info(filter, api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_list_with_http_info(filter, api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->vaults_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The filter to apply on the operation. |  |
| **api_version** | **String** | Azure Resource Manager Api Version. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **top** | **Integer** | Maximum number of results to return. | [optional] |

### Return type

[**ResourceListResult**](ResourceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## vaults_list_deleted

> <DeletedVaultListResult> vaults_list_deleted(api_version, subscription_id)



Gets information about the deleted vaults in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.vaults_list_deleted(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->vaults_list_deleted: #{e}"
end
```

#### Using the vaults_list_deleted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedVaultListResult>, Integer, Hash)> vaults_list_deleted_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.vaults_list_deleted_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedVaultListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling DefaultApi->vaults_list_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**DeletedVaultListResult**](DeletedVaultListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


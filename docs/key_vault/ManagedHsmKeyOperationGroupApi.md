# AzureRest::ManagedHsmKeyOperationGroupApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**managed_hsm_keys_get_version**](ManagedHsmKeyOperationGroupApi.md#managed_hsm_keys_get_version) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/keys/{keyName}/versions/{keyVersion} |  |
| [**managed_hsm_keys_list_versions**](ManagedHsmKeyOperationGroupApi.md#managed_hsm_keys_list_versions) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/managedHSMs/{name}/keys/{keyName}/versions |  |


## managed_hsm_keys_get_version

> <ManagedHsmKey> managed_hsm_keys_get_version(api_version, subscription_id, resource_group_name, name, key_name, key_version)



Gets the specified version of the specified key in the specified managed HSM.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedHsmKeyOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the Managed HSM Pool within the specified resource group.
key_name = 'key_name_example' # String | The name of the key to be created. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information.
key_version = 'key_version_example' # String | The version of the key to be retrieved.

begin
  
  result = api_instance.managed_hsm_keys_get_version(api_version, subscription_id, resource_group_name, name, key_name, key_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeyOperationGroupApi->managed_hsm_keys_get_version: #{e}"
end
```

#### Using the managed_hsm_keys_get_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsmKey>, Integer, Hash)> managed_hsm_keys_get_version_with_http_info(api_version, subscription_id, resource_group_name, name, key_name, key_version)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsm_keys_get_version_with_http_info(api_version, subscription_id, resource_group_name, name, key_name, key_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsmKey>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeyOperationGroupApi->managed_hsm_keys_get_version_with_http_info: #{e}"
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
| **key_version** | **String** | The version of the key to be retrieved. |  |

### Return type

[**ManagedHsmKey**](ManagedHsmKey.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_hsm_keys_list_versions

> <ManagedHsmKeyListResult> managed_hsm_keys_list_versions(api_version, subscription_id, resource_group_name, name, key_name)



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

api_instance = AzureRest::ManagedHsmKeyOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
name = 'name_example' # String | The name of the Managed HSM Pool within the specified resource group.
key_name = 'key_name_example' # String | The name of the key to be created. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information.

begin
  
  result = api_instance.managed_hsm_keys_list_versions(api_version, subscription_id, resource_group_name, name, key_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeyOperationGroupApi->managed_hsm_keys_list_versions: #{e}"
end
```

#### Using the managed_hsm_keys_list_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedHsmKeyListResult>, Integer, Hash)> managed_hsm_keys_list_versions_with_http_info(api_version, subscription_id, resource_group_name, name, key_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsm_keys_list_versions_with_http_info(api_version, subscription_id, resource_group_name, name, key_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedHsmKeyListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedHsmKeyOperationGroupApi->managed_hsm_keys_list_versions_with_http_info: #{e}"
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

[**ManagedHsmKeyListResult**](ManagedHsmKeyListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


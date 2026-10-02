# AzureSDK::ManagementPoliciesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**management_policies_create_or_update**](ManagementPoliciesApi.md#management_policies_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/managementPolicies/{managementPolicyName} |  |
| [**management_policies_delete**](ManagementPoliciesApi.md#management_policies_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/managementPolicies/{managementPolicyName} |  |
| [**management_policies_get**](ManagementPoliciesApi.md#management_policies_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/managementPolicies/{managementPolicyName} |  |


## management_policies_create_or_update

> <ManagementPolicy> management_policies_create_or_update(api_version, subscription_id, resource_group_name, account_name, management_policy_name, properties)



Sets the managementpolicy to the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagementPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
management_policy_name = 'default' # String | The name of the Storage Account Management Policy. It should always be 'default'
properties = AzureSDK::ManagementPolicy.new # ManagementPolicy | The ManagementPolicy set to a storage account.

begin
  
  result = api_instance.management_policies_create_or_update(api_version, subscription_id, resource_group_name, account_name, management_policy_name, properties)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagementPoliciesApi->management_policies_create_or_update: #{e}"
end
```

#### Using the management_policies_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagementPolicy>, Integer, Hash)> management_policies_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, management_policy_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.management_policies_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, management_policy_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagementPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagementPoliciesApi->management_policies_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **management_policy_name** | **String** | The name of the Storage Account Management Policy. It should always be &#39;default&#39; |  |
| **properties** | [**ManagementPolicy**](ManagementPolicy.md) | The ManagementPolicy set to a storage account. |  |

### Return type

[**ManagementPolicy**](ManagementPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## management_policies_delete

> management_policies_delete(api_version, subscription_id, resource_group_name, account_name, management_policy_name)



Deletes the managementpolicy associated with the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagementPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
management_policy_name = 'default' # String | The name of the Storage Account Management Policy. It should always be 'default'

begin
  
  api_instance.management_policies_delete(api_version, subscription_id, resource_group_name, account_name, management_policy_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagementPoliciesApi->management_policies_delete: #{e}"
end
```

#### Using the management_policies_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> management_policies_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, management_policy_name)

```ruby
begin
  
  data, status_code, headers = api_instance.management_policies_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, management_policy_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagementPoliciesApi->management_policies_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **management_policy_name** | **String** | The name of the Storage Account Management Policy. It should always be &#39;default&#39; |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## management_policies_get

> <ManagementPolicy> management_policies_get(api_version, subscription_id, resource_group_name, account_name, management_policy_name)



Gets the managementpolicy associated with the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ManagementPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
management_policy_name = 'default' # String | The name of the Storage Account Management Policy. It should always be 'default'

begin
  
  result = api_instance.management_policies_get(api_version, subscription_id, resource_group_name, account_name, management_policy_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagementPoliciesApi->management_policies_get: #{e}"
end
```

#### Using the management_policies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagementPolicy>, Integer, Hash)> management_policies_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, management_policy_name)

```ruby
begin
  
  data, status_code, headers = api_instance.management_policies_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, management_policy_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagementPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling ManagementPoliciesApi->management_policies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **management_policy_name** | **String** | The name of the Storage Account Management Policy. It should always be &#39;default&#39; |  |

### Return type

[**ManagementPolicy**](ManagementPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


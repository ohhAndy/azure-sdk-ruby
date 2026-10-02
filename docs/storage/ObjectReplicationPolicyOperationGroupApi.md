# AzureSDK::ObjectReplicationPolicyOperationGroupApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**object_replication_policies_create_or_update**](ObjectReplicationPolicyOperationGroupApi.md#object_replication_policies_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/objectReplicationPolicies/{objectReplicationPolicyId} |  |
| [**object_replication_policies_delete**](ObjectReplicationPolicyOperationGroupApi.md#object_replication_policies_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/objectReplicationPolicies/{objectReplicationPolicyId} |  |
| [**object_replication_policies_get**](ObjectReplicationPolicyOperationGroupApi.md#object_replication_policies_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/objectReplicationPolicies/{objectReplicationPolicyId} |  |
| [**object_replication_policies_list**](ObjectReplicationPolicyOperationGroupApi.md#object_replication_policies_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/objectReplicationPolicies |  |


## object_replication_policies_create_or_update

> <ObjectReplicationPolicy> object_replication_policies_create_or_update(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id, properties)



Create or update the object replication policy of the storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ObjectReplicationPolicyOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
object_replication_policy_id = 'object_replication_policy_id_example' # String | For the destination account, provide the value 'default'. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file.
properties = AzureSDK::ObjectReplicationPolicy.new # ObjectReplicationPolicy | The object replication policy set to a storage account. A unique policy ID will be created if absent.

begin
  
  result = api_instance.object_replication_policies_create_or_update(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id, properties)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ObjectReplicationPolicyOperationGroupApi->object_replication_policies_create_or_update: #{e}"
end
```

#### Using the object_replication_policies_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectReplicationPolicy>, Integer, Hash)> object_replication_policies_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.object_replication_policies_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectReplicationPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling ObjectReplicationPolicyOperationGroupApi->object_replication_policies_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **object_replication_policy_id** | **String** | For the destination account, provide the value &#39;default&#39;. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file. |  |
| **properties** | [**ObjectReplicationPolicy**](ObjectReplicationPolicy.md) | The object replication policy set to a storage account. A unique policy ID will be created if absent. |  |

### Return type

[**ObjectReplicationPolicy**](ObjectReplicationPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## object_replication_policies_delete

> object_replication_policies_delete(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id)



Deletes the object replication policy associated with the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ObjectReplicationPolicyOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
object_replication_policy_id = 'object_replication_policy_id_example' # String | For the destination account, provide the value 'default'. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file.

begin
  
  api_instance.object_replication_policies_delete(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id)
rescue AzureSDK::ApiError => e
  puts "Error when calling ObjectReplicationPolicyOperationGroupApi->object_replication_policies_delete: #{e}"
end
```

#### Using the object_replication_policies_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> object_replication_policies_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id)

```ruby
begin
  
  data, status_code, headers = api_instance.object_replication_policies_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ObjectReplicationPolicyOperationGroupApi->object_replication_policies_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **object_replication_policy_id** | **String** | For the destination account, provide the value &#39;default&#39;. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## object_replication_policies_get

> <ObjectReplicationPolicy> object_replication_policies_get(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id)



Get the object replication policy of the storage account by policy ID.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ObjectReplicationPolicyOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
object_replication_policy_id = 'object_replication_policy_id_example' # String | For the destination account, provide the value 'default'. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file.

begin
  
  result = api_instance.object_replication_policies_get(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ObjectReplicationPolicyOperationGroupApi->object_replication_policies_get: #{e}"
end
```

#### Using the object_replication_policies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectReplicationPolicy>, Integer, Hash)> object_replication_policies_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id)

```ruby
begin
  
  data, status_code, headers = api_instance.object_replication_policies_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, object_replication_policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectReplicationPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling ObjectReplicationPolicyOperationGroupApi->object_replication_policies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **object_replication_policy_id** | **String** | For the destination account, provide the value &#39;default&#39;. Configure the policy on the destination account first. For the source account, provide the value of the policy ID that is returned when you download the policy that was defined on the destination account. The policy is downloaded as a JSON file. |  |

### Return type

[**ObjectReplicationPolicy**](ObjectReplicationPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## object_replication_policies_list

> <ObjectReplicationPolicies> object_replication_policies_list(api_version, subscription_id, resource_group_name, account_name)



List the object replication policies associated with the storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ObjectReplicationPolicyOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.object_replication_policies_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ObjectReplicationPolicyOperationGroupApi->object_replication_policies_list: #{e}"
end
```

#### Using the object_replication_policies_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectReplicationPolicies>, Integer, Hash)> object_replication_policies_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.object_replication_policies_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectReplicationPolicies>
rescue AzureSDK::ApiError => e
  puts "Error when calling ObjectReplicationPolicyOperationGroupApi->object_replication_policies_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |

### Return type

[**ObjectReplicationPolicies**](ObjectReplicationPolicies.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


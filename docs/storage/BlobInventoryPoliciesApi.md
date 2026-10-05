# AzureRest::BlobInventoryPoliciesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**blob_inventory_policies_create_or_update**](BlobInventoryPoliciesApi.md#blob_inventory_policies_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/inventoryPolicies/{blobInventoryPolicyName} |  |
| [**blob_inventory_policies_delete**](BlobInventoryPoliciesApi.md#blob_inventory_policies_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/inventoryPolicies/{blobInventoryPolicyName} |  |
| [**blob_inventory_policies_get**](BlobInventoryPoliciesApi.md#blob_inventory_policies_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/inventoryPolicies/{blobInventoryPolicyName} |  |
| [**blob_inventory_policies_list**](BlobInventoryPoliciesApi.md#blob_inventory_policies_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/inventoryPolicies |  |


## blob_inventory_policies_create_or_update

> <BlobInventoryPolicy> blob_inventory_policies_create_or_update(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name, properties)



Sets the blob inventory policy to the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BlobInventoryPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
blob_inventory_policy_name = 'default' # String | The name of the storage account blob inventory policy. It should always be 'default'
properties = AzureRest::BlobInventoryPolicy.new # BlobInventoryPolicy | The blob inventory policy set to a storage account.

begin
  
  result = api_instance.blob_inventory_policies_create_or_update(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name, properties)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BlobInventoryPoliciesApi->blob_inventory_policies_create_or_update: #{e}"
end
```

#### Using the blob_inventory_policies_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobInventoryPolicy>, Integer, Hash)> blob_inventory_policies_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_inventory_policies_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobInventoryPolicy>
rescue AzureRest::ApiError => e
  puts "Error when calling BlobInventoryPoliciesApi->blob_inventory_policies_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **blob_inventory_policy_name** | **String** | The name of the storage account blob inventory policy. It should always be &#39;default&#39; |  |
| **properties** | [**BlobInventoryPolicy**](BlobInventoryPolicy.md) | The blob inventory policy set to a storage account. |  |

### Return type

[**BlobInventoryPolicy**](BlobInventoryPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_inventory_policies_delete

> blob_inventory_policies_delete(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name)



Deletes the blob inventory policy associated with the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BlobInventoryPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
blob_inventory_policy_name = 'default' # String | The name of the storage account blob inventory policy. It should always be 'default'

begin
  
  api_instance.blob_inventory_policies_delete(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name)
rescue AzureRest::ApiError => e
  puts "Error when calling BlobInventoryPoliciesApi->blob_inventory_policies_delete: #{e}"
end
```

#### Using the blob_inventory_policies_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> blob_inventory_policies_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_inventory_policies_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling BlobInventoryPoliciesApi->blob_inventory_policies_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **blob_inventory_policy_name** | **String** | The name of the storage account blob inventory policy. It should always be &#39;default&#39; |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_inventory_policies_get

> <BlobInventoryPolicy> blob_inventory_policies_get(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name)



Gets the blob inventory policy associated with the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BlobInventoryPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
blob_inventory_policy_name = 'default' # String | The name of the storage account blob inventory policy. It should always be 'default'

begin
  
  result = api_instance.blob_inventory_policies_get(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BlobInventoryPoliciesApi->blob_inventory_policies_get: #{e}"
end
```

#### Using the blob_inventory_policies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobInventoryPolicy>, Integer, Hash)> blob_inventory_policies_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_inventory_policies_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_inventory_policy_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobInventoryPolicy>
rescue AzureRest::ApiError => e
  puts "Error when calling BlobInventoryPoliciesApi->blob_inventory_policies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **blob_inventory_policy_name** | **String** | The name of the storage account blob inventory policy. It should always be &#39;default&#39; |  |

### Return type

[**BlobInventoryPolicy**](BlobInventoryPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_inventory_policies_list

> <ListBlobInventoryPolicy> blob_inventory_policies_list(api_version, subscription_id, resource_group_name, account_name)



Gets the blob inventory policy associated with the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BlobInventoryPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.blob_inventory_policies_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BlobInventoryPoliciesApi->blob_inventory_policies_list: #{e}"
end
```

#### Using the blob_inventory_policies_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBlobInventoryPolicy>, Integer, Hash)> blob_inventory_policies_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_inventory_policies_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBlobInventoryPolicy>
rescue AzureRest::ApiError => e
  puts "Error when calling BlobInventoryPoliciesApi->blob_inventory_policies_list_with_http_info: #{e}"
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

[**ListBlobInventoryPolicy**](ListBlobInventoryPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


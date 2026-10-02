# AzureSDK::DataSharesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**data_shares_create**](DataSharesApi.md#data_shares_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/dataShares/{dataShareName} |  |
| [**data_shares_delete**](DataSharesApi.md#data_shares_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/dataShares/{dataShareName} |  |
| [**data_shares_get**](DataSharesApi.md#data_shares_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/dataShares/{dataShareName} |  |
| [**data_shares_list_by_storage_account**](DataSharesApi.md#data_shares_list_by_storage_account) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/dataShares |  |
| [**data_shares_update**](DataSharesApi.md#data_shares_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/dataShares/{dataShareName} |  |


## data_shares_create

> <DataShare> data_shares_create(api_version, subscription_id, resource_group_name, account_name, data_share_name, resource)



Create a Storage DataShare if it does not already exist; otherwise, error out. This API will not allow you to replace an already existing resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DataSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
data_share_name = 'data_share_name_example' # String | The name of the Storage DataShare.
resource = AzureSDK::DataShare.new({location: 'location_example', properties: AzureSDK::StorageDataShareProperties.new({access_policies: [AzureSDK::StorageDataShareAccessPolicy.new({principal_id: 'principal_id_example', tenant_id: 'tenant_id_example', permission: AzureSDK::StorageDataShareAccessPolicyPermission::NONE})], assets: [AzureSDK::StorageDataShareAsset.new({asset_path: 'asset_path_example', display_name: 'display_name_example'})]})}) # DataShare | Create a Storage DataShare if it does not already exist; otherwise, error out. This API will not allow you to replace an already existing resource.

begin
  
  result = api_instance.data_shares_create(api_version, subscription_id, resource_group_name, account_name, data_share_name, resource)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_create: #{e}"
end
```

#### Using the data_shares_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataShare>, Integer, Hash)> data_shares_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, data_share_name, resource)

```ruby
begin
  
  data, status_code, headers = api_instance.data_shares_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, data_share_name, resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataShare>
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **data_share_name** | **String** | The name of the Storage DataShare. |  |
| **resource** | [**DataShare**](DataShare.md) | Create a Storage DataShare if it does not already exist; otherwise, error out. This API will not allow you to replace an already existing resource. |  |

### Return type

[**DataShare**](DataShare.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## data_shares_delete

> data_shares_delete(api_version, subscription_id, resource_group_name, account_name, data_share_name)



Delete a Storage DataShare.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DataSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
data_share_name = 'data_share_name_example' # String | The name of the Storage DataShare.

begin
  
  api_instance.data_shares_delete(api_version, subscription_id, resource_group_name, account_name, data_share_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_delete: #{e}"
end
```

#### Using the data_shares_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> data_shares_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, data_share_name)

```ruby
begin
  
  data, status_code, headers = api_instance.data_shares_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, data_share_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **data_share_name** | **String** | The name of the Storage DataShare. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## data_shares_get

> <DataShare> data_shares_get(api_version, subscription_id, resource_group_name, account_name, data_share_name)



Get the specified Storage DataShare.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DataSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
data_share_name = 'data_share_name_example' # String | The name of the Storage DataShare.

begin
  
  result = api_instance.data_shares_get(api_version, subscription_id, resource_group_name, account_name, data_share_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_get: #{e}"
end
```

#### Using the data_shares_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataShare>, Integer, Hash)> data_shares_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, data_share_name)

```ruby
begin
  
  data, status_code, headers = api_instance.data_shares_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, data_share_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataShare>
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **data_share_name** | **String** | The name of the Storage DataShare. |  |

### Return type

[**DataShare**](DataShare.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## data_shares_list_by_storage_account

> <DataShareListResult> data_shares_list_by_storage_account(api_version, subscription_id, resource_group_name, account_name)



List all Storage DataShares in a Storage Account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DataSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.data_shares_list_by_storage_account(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_list_by_storage_account: #{e}"
end
```

#### Using the data_shares_list_by_storage_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataShareListResult>, Integer, Hash)> data_shares_list_by_storage_account_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.data_shares_list_by_storage_account_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataShareListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_list_by_storage_account_with_http_info: #{e}"
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

[**DataShareListResult**](DataShareListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## data_shares_update

> <DataShare> data_shares_update(api_version, subscription_id, resource_group_name, account_name, data_share_name, properties)



Update a Storage DataShare.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DataSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
data_share_name = 'data_share_name_example' # String | The name of the Storage DataShare.
properties = AzureSDK::DataShareUpdate.new # DataShareUpdate | The updated properties of the Storage DataShare.

begin
  
  result = api_instance.data_shares_update(api_version, subscription_id, resource_group_name, account_name, data_share_name, properties)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_update: #{e}"
end
```

#### Using the data_shares_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataShare>, Integer, Hash)> data_shares_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, data_share_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.data_shares_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, data_share_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataShare>
rescue AzureSDK::ApiError => e
  puts "Error when calling DataSharesApi->data_shares_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **data_share_name** | **String** | The name of the Storage DataShare. |  |
| **properties** | [**DataShareUpdate**](DataShareUpdate.md) | The updated properties of the Storage DataShare. |  |

### Return type

[**DataShare**](DataShare.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


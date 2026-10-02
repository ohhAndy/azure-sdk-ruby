# AzureSDK::FileSharesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**file_shares_create**](FileSharesApi.md#file_shares_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/shares/{shareName} |  |
| [**file_shares_delete**](FileSharesApi.md#file_shares_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/shares/{shareName} |  |
| [**file_shares_get**](FileSharesApi.md#file_shares_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/shares/{shareName} |  |
| [**file_shares_lease**](FileSharesApi.md#file_shares_lease) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/shares/{shareName}/lease |  |
| [**file_shares_restore**](FileSharesApi.md#file_shares_restore) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/shares/{shareName}/restore |  |
| [**file_shares_update**](FileSharesApi.md#file_shares_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/fileServices/default/shares/{shareName} |  |


## file_shares_create

> <FileShare> file_shares_create(api_version, subscription_id, resource_group_name, account_name, share_name, file_share, opts)



Creates a new share under the specified account as described by request body. The share resource includes metadata and properties for that share. It does not include a list of the files contained by the share.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
share_name = 'share_name_example' # String | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
file_share = AzureSDK::FileShare.new # FileShare | Properties of the file share to create.
opts = {
  expand: 'expand_example' # String | Optional, used to expand the properties within share's properties. Valid values are: snapshots. Should be passed as a string with delimiter ','
}

begin
  
  result = api_instance.file_shares_create(api_version, subscription_id, resource_group_name, account_name, share_name, file_share, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_create: #{e}"
end
```

#### Using the file_shares_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShare>, Integer, Hash)> file_shares_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, file_share, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.file_shares_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, file_share, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShare>
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **share_name** | **String** | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **file_share** | [**FileShare**](FileShare.md) | Properties of the file share to create. |  |
| **expand** | **String** | Optional, used to expand the properties within share&#39;s properties. Valid values are: snapshots. Should be passed as a string with delimiter &#39;,&#39; | [optional] |

### Return type

[**FileShare**](FileShare.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## file_shares_delete

> file_shares_delete(api_version, subscription_id, resource_group_name, account_name, share_name, opts)



Deletes specified share under its account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
share_name = 'share_name_example' # String | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
opts = {
  x_ms_snapshot: 'x_ms_snapshot_example', # String | Optional, used to delete a snapshot.
  include: 'include_example' # String | Optional. Valid values are: snapshots, leased-snapshots, none. The default value is snapshots. For 'snapshots', the file share is deleted including all of its file share snapshots. If the file share contains leased-snapshots, the deletion fails. For 'leased-snapshots', the file share is deleted included all of its file share snapshots (leased/unleased). For 'none', the file share is deleted if it has no share snapshots. If the file share contains any snapshots (leased or unleased), the deletion fails.
}

begin
  
  api_instance.file_shares_delete(api_version, subscription_id, resource_group_name, account_name, share_name, opts)
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_delete: #{e}"
end
```

#### Using the file_shares_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> file_shares_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.file_shares_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **share_name** | **String** | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **x_ms_snapshot** | **String** | Optional, used to delete a snapshot. | [optional] |
| **include** | **String** | Optional. Valid values are: snapshots, leased-snapshots, none. The default value is snapshots. For &#39;snapshots&#39;, the file share is deleted including all of its file share snapshots. If the file share contains leased-snapshots, the deletion fails. For &#39;leased-snapshots&#39;, the file share is deleted included all of its file share snapshots (leased/unleased). For &#39;none&#39;, the file share is deleted if it has no share snapshots. If the file share contains any snapshots (leased or unleased), the deletion fails. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## file_shares_get

> <FileShare> file_shares_get(api_version, subscription_id, resource_group_name, account_name, share_name, opts)



Gets properties of a specified share.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
share_name = 'share_name_example' # String | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
opts = {
  expand: 'expand_example', # String | Optional, used to expand the properties within share's properties. Valid values are: stats. Should be passed as a string with delimiter ','.
  x_ms_snapshot: 'x_ms_snapshot_example' # String | Optional, used to retrieve properties of a snapshot.
}

begin
  
  result = api_instance.file_shares_get(api_version, subscription_id, resource_group_name, account_name, share_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_get: #{e}"
end
```

#### Using the file_shares_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShare>, Integer, Hash)> file_shares_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.file_shares_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShare>
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **share_name** | **String** | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **expand** | **String** | Optional, used to expand the properties within share&#39;s properties. Valid values are: stats. Should be passed as a string with delimiter &#39;,&#39;. | [optional] |
| **x_ms_snapshot** | **String** | Optional, used to retrieve properties of a snapshot. | [optional] |

### Return type

[**FileShare**](FileShare.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## file_shares_lease

> <LeaseShareResponse> file_shares_lease(api_version, subscription_id, resource_group_name, account_name, share_name, opts)



The Lease Share operation establishes and manages a lock on a share for delete operations. The lock duration can be 15 to 60 seconds, or can be infinite.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
share_name = 'share_name_example' # String | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
opts = {
  x_ms_snapshot: 'x_ms_snapshot_example', # String | Optional. Specify the snapshot time to lease a snapshot.
  parameters: AzureSDK::LeaseShareRequest.new({action: AzureSDK::LeaseShareAction::ACQUIRE}) # LeaseShareRequest | The content of the action request
}

begin
  
  result = api_instance.file_shares_lease(api_version, subscription_id, resource_group_name, account_name, share_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_lease: #{e}"
end
```

#### Using the file_shares_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseShareResponse>, Integer, Hash)> file_shares_lease_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.file_shares_lease_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseShareResponse>
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_lease_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **share_name** | **String** | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **x_ms_snapshot** | **String** | Optional. Specify the snapshot time to lease a snapshot. | [optional] |
| **parameters** | [**LeaseShareRequest**](LeaseShareRequest.md) | The content of the action request | [optional] |

### Return type

[**LeaseShareResponse**](LeaseShareResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## file_shares_restore

> file_shares_restore(api_version, subscription_id, resource_group_name, account_name, share_name, deleted_share)



Restore a file share within a valid retention days if share soft delete is enabled

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
share_name = 'share_name_example' # String | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
deleted_share = AzureSDK::DeletedShare.new({deleted_share_name: 'deleted_share_name_example', deleted_share_version: 'deleted_share_version_example'}) # DeletedShare | 

begin
  
  api_instance.file_shares_restore(api_version, subscription_id, resource_group_name, account_name, share_name, deleted_share)
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_restore: #{e}"
end
```

#### Using the file_shares_restore_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> file_shares_restore_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, deleted_share)

```ruby
begin
  
  data, status_code, headers = api_instance.file_shares_restore_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, deleted_share)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_restore_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **share_name** | **String** | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **deleted_share** | [**DeletedShare**](DeletedShare.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## file_shares_update

> <FileShare> file_shares_update(api_version, subscription_id, resource_group_name, account_name, share_name, file_share)



Updates share properties as specified in request body. Properties not mentioned in the request will not be changed. Update fails if the specified share does not already exist.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FileSharesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
share_name = 'share_name_example' # String | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
file_share = AzureSDK::FileShare.new # FileShare | Properties to update for the file share.

begin
  
  result = api_instance.file_shares_update(api_version, subscription_id, resource_group_name, account_name, share_name, file_share)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_update: #{e}"
end
```

#### Using the file_shares_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShare>, Integer, Hash)> file_shares_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, file_share)

```ruby
begin
  
  data, status_code, headers = api_instance.file_shares_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, share_name, file_share)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShare>
rescue AzureSDK::ApiError => e
  puts "Error when calling FileSharesApi->file_shares_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **share_name** | **String** | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **file_share** | [**FileShare**](FileShare.md) | Properties to update for the file share. |  |

### Return type

[**FileShare**](FileShare.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


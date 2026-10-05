# AzureRest::LocalUserOperationGroupApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**local_users_create_or_update**](LocalUserOperationGroupApi.md#local_users_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/localUsers/{username} |  |
| [**local_users_delete**](LocalUserOperationGroupApi.md#local_users_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/localUsers/{username} |  |
| [**local_users_get**](LocalUserOperationGroupApi.md#local_users_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/localUsers/{username} |  |
| [**local_users_list**](LocalUserOperationGroupApi.md#local_users_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/localUsers |  |
| [**local_users_list_keys**](LocalUserOperationGroupApi.md#local_users_list_keys) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/localUsers/{username}/listKeys |  |
| [**local_users_regenerate_password**](LocalUserOperationGroupApi.md#local_users_regenerate_password) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/localUsers/{username}/regeneratePassword |  |


## local_users_create_or_update

> <LocalUser> local_users_create_or_update(api_version, subscription_id, resource_group_name, account_name, username, properties)



Create or update the properties of a local user associated with the storage account. Properties for NFSv3 enablement and extended groups cannot be set with other properties.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LocalUserOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
username = 'username_example' # String | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.
properties = AzureRest::LocalUser.new # LocalUser | The local user associated with a storage account.

begin
  
  result = api_instance.local_users_create_or_update(api_version, subscription_id, resource_group_name, account_name, username, properties)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_create_or_update: #{e}"
end
```

#### Using the local_users_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocalUser>, Integer, Hash)> local_users_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, username, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.local_users_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, username, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocalUser>
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **username** | **String** | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account. |  |
| **properties** | [**LocalUser**](LocalUser.md) | The local user associated with a storage account. |  |

### Return type

[**LocalUser**](LocalUser.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## local_users_delete

> local_users_delete(api_version, subscription_id, resource_group_name, account_name, username)



Deletes the local user associated with the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LocalUserOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
username = 'username_example' # String | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.

begin
  
  api_instance.local_users_delete(api_version, subscription_id, resource_group_name, account_name, username)
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_delete: #{e}"
end
```

#### Using the local_users_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> local_users_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, username)

```ruby
begin
  
  data, status_code, headers = api_instance.local_users_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **username** | **String** | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## local_users_get

> <LocalUser> local_users_get(api_version, subscription_id, resource_group_name, account_name, username)



Get the local user of the storage account by username.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LocalUserOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
username = 'username_example' # String | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.

begin
  
  result = api_instance.local_users_get(api_version, subscription_id, resource_group_name, account_name, username)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_get: #{e}"
end
```

#### Using the local_users_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocalUser>, Integer, Hash)> local_users_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, username)

```ruby
begin
  
  data, status_code, headers = api_instance.local_users_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocalUser>
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **username** | **String** | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account. |  |

### Return type

[**LocalUser**](LocalUser.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## local_users_list

> <LocalUsers> local_users_list(api_version, subscription_id, resource_group_name, account_name, opts)



List the local users associated with the storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LocalUserOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  maxpagesize: 56, # Integer | Optional, specifies the maximum number of local users that will be included in the list response.
  filter: 'filter_example', # String | Optional. When specified, only local user names starting with the filter will be listed.
  include: 'nfsv3' # String | Optional, when specified, will list local users enabled for the specific protocol. Lists all users by default.
}

begin
  
  result = api_instance.local_users_list(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_list: #{e}"
end
```

#### Using the local_users_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocalUsers>, Integer, Hash)> local_users_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.local_users_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocalUsers>
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **maxpagesize** | **Integer** | Optional, specifies the maximum number of local users that will be included in the list response. | [optional] |
| **filter** | **String** | Optional. When specified, only local user names starting with the filter will be listed. | [optional] |
| **include** | **String** | Optional, when specified, will list local users enabled for the specific protocol. Lists all users by default. | [optional] |

### Return type

[**LocalUsers**](LocalUsers.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## local_users_list_keys

> <LocalUserKeys> local_users_list_keys(api_version, subscription_id, resource_group_name, account_name, username)



List SSH authorized keys and shared key of the local user.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LocalUserOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
username = 'username_example' # String | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.

begin
  
  result = api_instance.local_users_list_keys(api_version, subscription_id, resource_group_name, account_name, username)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_list_keys: #{e}"
end
```

#### Using the local_users_list_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocalUserKeys>, Integer, Hash)> local_users_list_keys_with_http_info(api_version, subscription_id, resource_group_name, account_name, username)

```ruby
begin
  
  data, status_code, headers = api_instance.local_users_list_keys_with_http_info(api_version, subscription_id, resource_group_name, account_name, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocalUserKeys>
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_list_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **username** | **String** | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account. |  |

### Return type

[**LocalUserKeys**](LocalUserKeys.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## local_users_regenerate_password

> <LocalUserRegeneratePasswordResult> local_users_regenerate_password(api_version, subscription_id, resource_group_name, account_name, username)



Regenerate the local user SSH password.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LocalUserOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
username = 'username_example' # String | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account.

begin
  
  result = api_instance.local_users_regenerate_password(api_version, subscription_id, resource_group_name, account_name, username)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_regenerate_password: #{e}"
end
```

#### Using the local_users_regenerate_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocalUserRegeneratePasswordResult>, Integer, Hash)> local_users_regenerate_password_with_http_info(api_version, subscription_id, resource_group_name, account_name, username)

```ruby
begin
  
  data, status_code, headers = api_instance.local_users_regenerate_password_with_http_info(api_version, subscription_id, resource_group_name, account_name, username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocalUserRegeneratePasswordResult>
rescue AzureRest::ApiError => e
  puts "Error when calling LocalUserOperationGroupApi->local_users_regenerate_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **username** | **String** | The name of local user. The username must contain lowercase letters and numbers only. It must be unique only within the storage account. |  |

### Return type

[**LocalUserRegeneratePasswordResult**](LocalUserRegeneratePasswordResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


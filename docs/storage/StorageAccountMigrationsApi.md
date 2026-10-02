# AzureSDK::StorageAccountMigrationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**storage_accounts_get_customer_initiated_migration**](StorageAccountMigrationsApi.md#storage_accounts_get_customer_initiated_migration) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/accountMigrations/{migrationName} |  |


## storage_accounts_get_customer_initiated_migration

> <StorageAccountMigration> storage_accounts_get_customer_initiated_migration(api_version, subscription_id, resource_group_name, account_name, migration_name)



Gets the status of the ongoing migration for the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::StorageAccountMigrationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
migration_name = 'default' # String | The name of the Storage Account Migration. It should always be 'default'

begin
  
  result = api_instance.storage_accounts_get_customer_initiated_migration(api_version, subscription_id, resource_group_name, account_name, migration_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageAccountMigrationsApi->storage_accounts_get_customer_initiated_migration: #{e}"
end
```

#### Using the storage_accounts_get_customer_initiated_migration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageAccountMigration>, Integer, Hash)> storage_accounts_get_customer_initiated_migration_with_http_info(api_version, subscription_id, resource_group_name, account_name, migration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_get_customer_initiated_migration_with_http_info(api_version, subscription_id, resource_group_name, account_name, migration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageAccountMigration>
rescue AzureSDK::ApiError => e
  puts "Error when calling StorageAccountMigrationsApi->storage_accounts_get_customer_initiated_migration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **migration_name** | **String** | The name of the Storage Account Migration. It should always be &#39;default&#39; |  |

### Return type

[**StorageAccountMigration**](StorageAccountMigration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


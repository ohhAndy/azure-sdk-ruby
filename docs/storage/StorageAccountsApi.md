# AzureRest::StorageAccountsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_link_resources_list_by_storage_account**](StorageAccountsApi.md#private_link_resources_list_by_storage_account) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/privateLinkResources |  |
| [**storage_accounts_abort_hierarchical_namespace_migration**](StorageAccountsApi.md#storage_accounts_abort_hierarchical_namespace_migration) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/aborthnsonmigration |  |
| [**storage_accounts_check_name_availability**](StorageAccountsApi.md#storage_accounts_check_name_availability) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.Storage/checkNameAvailability |  |
| [**storage_accounts_create**](StorageAccountsApi.md#storage_accounts_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName} |  |
| [**storage_accounts_customer_initiated_migration**](StorageAccountsApi.md#storage_accounts_customer_initiated_migration) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/startAccountMigration |  |
| [**storage_accounts_delete**](StorageAccountsApi.md#storage_accounts_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName} |  |
| [**storage_accounts_failover**](StorageAccountsApi.md#storage_accounts_failover) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/failover |  |
| [**storage_accounts_get_properties**](StorageAccountsApi.md#storage_accounts_get_properties) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName} |  |
| [**storage_accounts_hierarchical_namespace_migration**](StorageAccountsApi.md#storage_accounts_hierarchical_namespace_migration) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/hnsonmigration |  |
| [**storage_accounts_list**](StorageAccountsApi.md#storage_accounts_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Storage/storageAccounts |  |
| [**storage_accounts_list_account_sas**](StorageAccountsApi.md#storage_accounts_list_account_sas) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/listAccountSas |  |
| [**storage_accounts_list_by_resource_group**](StorageAccountsApi.md#storage_accounts_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts |  |
| [**storage_accounts_list_keys**](StorageAccountsApi.md#storage_accounts_list_keys) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/listKeys |  |
| [**storage_accounts_list_service_sas**](StorageAccountsApi.md#storage_accounts_list_service_sas) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/listServiceSas |  |
| [**storage_accounts_regenerate_key**](StorageAccountsApi.md#storage_accounts_regenerate_key) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/regenerateKey |  |
| [**storage_accounts_restore_blob_ranges**](StorageAccountsApi.md#storage_accounts_restore_blob_ranges) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/restoreBlobRanges |  |
| [**storage_accounts_revoke_user_delegation_keys**](StorageAccountsApi.md#storage_accounts_revoke_user_delegation_keys) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/revokeUserDelegationKeys |  |
| [**storage_accounts_update**](StorageAccountsApi.md#storage_accounts_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName} |  |
| [**storage_task_assignments_instances_report_list**](StorageAccountsApi.md#storage_task_assignments_instances_report_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/reports |  |


## private_link_resources_list_by_storage_account

> <PrivateLinkResourceListResult> private_link_resources_list_by_storage_account(api_version, subscription_id, resource_group_name, account_name)



Gets the private link resources that need to be created for a storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.private_link_resources_list_by_storage_account(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->private_link_resources_list_by_storage_account: #{e}"
end
```

#### Using the private_link_resources_list_by_storage_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateLinkResourceListResult>, Integer, Hash)> private_link_resources_list_by_storage_account_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.private_link_resources_list_by_storage_account_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateLinkResourceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->private_link_resources_list_by_storage_account_with_http_info: #{e}"
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

[**PrivateLinkResourceListResult**](PrivateLinkResourceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_abort_hierarchical_namespace_migration

> storage_accounts_abort_hierarchical_namespace_migration(api_version, subscription_id, resource_group_name, account_name)



Abort live Migration of storage account to enable Hns

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  api_instance.storage_accounts_abort_hierarchical_namespace_migration(api_version, subscription_id, resource_group_name, account_name)
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_abort_hierarchical_namespace_migration: #{e}"
end
```

#### Using the storage_accounts_abort_hierarchical_namespace_migration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_accounts_abort_hierarchical_namespace_migration_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_abort_hierarchical_namespace_migration_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_abort_hierarchical_namespace_migration_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_check_name_availability

> <CheckNameAvailabilityResult> storage_accounts_check_name_availability(api_version, subscription_id, account_name)



Checks that the storage account name is valid and is not already in use.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
account_name = AzureRest::StorageAccountCheckNameAvailabilityParameters.new({name: 'name_example', type: 'Microsoft.Storage/storageAccounts'}) # StorageAccountCheckNameAvailabilityParameters | The request body

begin
  
  result = api_instance.storage_accounts_check_name_availability(api_version, subscription_id, account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_check_name_availability: #{e}"
end
```

#### Using the storage_accounts_check_name_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckNameAvailabilityResult>, Integer, Hash)> storage_accounts_check_name_availability_with_http_info(api_version, subscription_id, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_check_name_availability_with_http_info(api_version, subscription_id, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckNameAvailabilityResult>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_check_name_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **account_name** | [**StorageAccountCheckNameAvailabilityParameters**](StorageAccountCheckNameAvailabilityParameters.md) | The request body |  |

### Return type

[**CheckNameAvailabilityResult**](CheckNameAvailabilityResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_accounts_create

> <StorageAccount> storage_accounts_create(api_version, subscription_id, resource_group_name, account_name, parameters)



Asynchronously creates a new storage account with the specified parameters. If an account is already created and a subsequent create request is issued with different properties, the account properties will be updated. If an account is already created and a subsequent create or update request is issued with the exact same set of properties, the request will succeed.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::StorageAccountCreateParameters.new({sku: AzureRest::Sku.new({name: AzureRest::SkuName::STANDARD_LRS}), kind: AzureRest::Kind::STORAGE, location: 'location_example'}) # StorageAccountCreateParameters | The parameters to provide for the created account.

begin
  
  result = api_instance.storage_accounts_create(api_version, subscription_id, resource_group_name, account_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_create: #{e}"
end
```

#### Using the storage_accounts_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageAccount>, Integer, Hash)> storage_accounts_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageAccount>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**StorageAccountCreateParameters**](StorageAccountCreateParameters.md) | The parameters to provide for the created account. |  |

### Return type

[**StorageAccount**](StorageAccount.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_accounts_customer_initiated_migration

> storage_accounts_customer_initiated_migration(api_version, subscription_id, resource_group_name, account_name, parameters)



Account Migration request can be triggered for a storage account to change its redundancy level. The migration updates the non-zonal redundant storage account to a zonal redundant account or vice-versa in order to have better reliability and availability. Zone-redundant storage (ZRS) replicates your storage account synchronously across three Azure availability zones in the primary region.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::StorageAccountMigration.new({properties: AzureRest::StorageAccountMigrationProperties.new({target_sku_name: AzureRest::SkuName::STANDARD_LRS})}) # StorageAccountMigration | The request parameters required to perform storage account migration.

begin
  
  api_instance.storage_accounts_customer_initiated_migration(api_version, subscription_id, resource_group_name, account_name, parameters)
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_customer_initiated_migration: #{e}"
end
```

#### Using the storage_accounts_customer_initiated_migration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_accounts_customer_initiated_migration_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_customer_initiated_migration_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_customer_initiated_migration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**StorageAccountMigration**](StorageAccountMigration.md) | The request parameters required to perform storage account migration. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_accounts_delete

> storage_accounts_delete(api_version, subscription_id, resource_group_name, account_name)



Deletes a storage account in Microsoft Azure.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  api_instance.storage_accounts_delete(api_version, subscription_id, resource_group_name, account_name)
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_delete: #{e}"
end
```

#### Using the storage_accounts_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_accounts_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_failover

> storage_accounts_failover(api_version, subscription_id, resource_group_name, account_name, opts)



A failover request can be triggered for a storage account in the event a primary endpoint becomes unavailable for any reason. The failover occurs from the storage account's primary cluster to the secondary cluster for RA-GRS accounts. The secondary cluster will become primary after failover and the account is converted to LRS. In the case of a Planned Failover, the primary and secondary clusters are swapped after failover and the account remains geo-replicated. Failover should continue to be used in the event of availability issues as Planned failover is only available while the primary and secondary endpoints are available. The primary use case of a Planned Failover is disaster recovery testing drills. This type of failover is invoked by setting FailoverType parameter to 'Planned'. Learn more about the failover options here- https://learn.microsoft.com/azure/storage/common/storage-disaster-recovery-guidance

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  failover_type: 'Planned' # String | The parameter is set to 'Planned' to indicate whether a Planned failover is requested.
}

begin
  
  api_instance.storage_accounts_failover(api_version, subscription_id, resource_group_name, account_name, opts)
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_failover: #{e}"
end
```

#### Using the storage_accounts_failover_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_accounts_failover_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_failover_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_failover_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **failover_type** | **String** | The parameter is set to &#39;Planned&#39; to indicate whether a Planned failover is requested. | [optional] |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_get_properties

> <StorageAccount> storage_accounts_get_properties(api_version, subscription_id, resource_group_name, account_name, opts)



Returns the properties for the specified storage account including but not limited to name, SKU name, location, and account status. The ListKeys operation should be used to retrieve storage keys.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  expand: 'geoReplicationStats' # String | May be used to expand the properties within account's properties. By default, data is not included when fetching properties. Currently we only support geoReplicationStats and blobRestoreStatus.
}

begin
  
  result = api_instance.storage_accounts_get_properties(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_get_properties: #{e}"
end
```

#### Using the storage_accounts_get_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageAccount>, Integer, Hash)> storage_accounts_get_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_get_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageAccount>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_get_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **expand** | **String** | May be used to expand the properties within account&#39;s properties. By default, data is not included when fetching properties. Currently we only support geoReplicationStats and blobRestoreStatus. | [optional] |

### Return type

[**StorageAccount**](StorageAccount.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_hierarchical_namespace_migration

> storage_accounts_hierarchical_namespace_migration(api_version, subscription_id, resource_group_name, account_name, request_type)



Live Migration of storage account to enable Hns

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
request_type = 'request_type_example' # String | Required. Hierarchical namespace migration type can either be a hierarchical namespace validation request 'HnsOnValidationRequest' or a hydration request 'HnsOnHydrationRequest'. The validation request will validate the migration whereas the hydration request will migrate the account.

begin
  
  api_instance.storage_accounts_hierarchical_namespace_migration(api_version, subscription_id, resource_group_name, account_name, request_type)
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_hierarchical_namespace_migration: #{e}"
end
```

#### Using the storage_accounts_hierarchical_namespace_migration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_accounts_hierarchical_namespace_migration_with_http_info(api_version, subscription_id, resource_group_name, account_name, request_type)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_hierarchical_namespace_migration_with_http_info(api_version, subscription_id, resource_group_name, account_name, request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_hierarchical_namespace_migration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **request_type** | **String** | Required. Hierarchical namespace migration type can either be a hierarchical namespace validation request &#39;HnsOnValidationRequest&#39; or a hydration request &#39;HnsOnHydrationRequest&#39;. The validation request will validate the migration whereas the hydration request will migrate the account. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_list

> <StorageAccountListResult> storage_accounts_list(api_version, subscription_id)



Lists all the storage accounts available under the subscription. Note that storage keys are not returned; use the ListKeys operation for this.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.storage_accounts_list(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list: #{e}"
end
```

#### Using the storage_accounts_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageAccountListResult>, Integer, Hash)> storage_accounts_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageAccountListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**StorageAccountListResult**](StorageAccountListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_list_account_sas

> <ListAccountSasResponse> storage_accounts_list_account_sas(api_version, subscription_id, resource_group_name, account_name, parameters)



List SAS credentials of a storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::AccountSasParameters.new({signed_services: AzureRest::Services::B, signed_resource_types: AzureRest::SignedResourceTypes::S, signed_permission: AzureRest::Permissions::R, signed_expiry: Time.now}) # AccountSasParameters | The parameters to provide to list SAS credentials for the storage account.

begin
  
  result = api_instance.storage_accounts_list_account_sas(api_version, subscription_id, resource_group_name, account_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list_account_sas: #{e}"
end
```

#### Using the storage_accounts_list_account_sas_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountSasResponse>, Integer, Hash)> storage_accounts_list_account_sas_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_list_account_sas_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountSasResponse>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list_account_sas_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**AccountSasParameters**](AccountSasParameters.md) | The parameters to provide to list SAS credentials for the storage account. |  |

### Return type

[**ListAccountSasResponse**](ListAccountSasResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_accounts_list_by_resource_group

> <StorageAccountListResult> storage_accounts_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all the storage accounts available under the given resource group. Note that storage keys are not returned; use the ListKeys operation for this.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.storage_accounts_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list_by_resource_group: #{e}"
end
```

#### Using the storage_accounts_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageAccountListResult>, Integer, Hash)> storage_accounts_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageAccountListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**StorageAccountListResult**](StorageAccountListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_list_keys

> <StorageAccountListKeysResult> storage_accounts_list_keys(api_version, subscription_id, resource_group_name, account_name, opts)



Lists the access keys or Kerberos keys (if active directory enabled) for the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  expand: 'kerb' # String | Specifies type of the key to be listed. Possible value is kerb.
}

begin
  
  result = api_instance.storage_accounts_list_keys(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list_keys: #{e}"
end
```

#### Using the storage_accounts_list_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageAccountListKeysResult>, Integer, Hash)> storage_accounts_list_keys_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_list_keys_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageAccountListKeysResult>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **expand** | **String** | Specifies type of the key to be listed. Possible value is kerb. | [optional] |

### Return type

[**StorageAccountListKeysResult**](StorageAccountListKeysResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_list_service_sas

> <ListServiceSasResponse> storage_accounts_list_service_sas(api_version, subscription_id, resource_group_name, account_name, parameters)



List service SAS credentials of a specific resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::ServiceSasParameters.new({canonicalized_resource: 'canonicalized_resource_example'}) # ServiceSasParameters | The parameters to provide to list service SAS credentials.

begin
  
  result = api_instance.storage_accounts_list_service_sas(api_version, subscription_id, resource_group_name, account_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list_service_sas: #{e}"
end
```

#### Using the storage_accounts_list_service_sas_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListServiceSasResponse>, Integer, Hash)> storage_accounts_list_service_sas_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_list_service_sas_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListServiceSasResponse>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_list_service_sas_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**ServiceSasParameters**](ServiceSasParameters.md) | The parameters to provide to list service SAS credentials. |  |

### Return type

[**ListServiceSasResponse**](ListServiceSasResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_accounts_regenerate_key

> <StorageAccountListKeysResult> storage_accounts_regenerate_key(api_version, subscription_id, resource_group_name, account_name, regenerate_key)



Regenerates one of the access keys or Kerberos keys for the specified storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
regenerate_key = AzureRest::StorageAccountRegenerateKeyParameters.new({key_name: 'key_name_example'}) # StorageAccountRegenerateKeyParameters | Specifies name of the key which should be regenerated -- key1, key2, kerb1, kerb2.

begin
  
  result = api_instance.storage_accounts_regenerate_key(api_version, subscription_id, resource_group_name, account_name, regenerate_key)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_regenerate_key: #{e}"
end
```

#### Using the storage_accounts_regenerate_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageAccountListKeysResult>, Integer, Hash)> storage_accounts_regenerate_key_with_http_info(api_version, subscription_id, resource_group_name, account_name, regenerate_key)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_regenerate_key_with_http_info(api_version, subscription_id, resource_group_name, account_name, regenerate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageAccountListKeysResult>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_regenerate_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **regenerate_key** | [**StorageAccountRegenerateKeyParameters**](StorageAccountRegenerateKeyParameters.md) | Specifies name of the key which should be regenerated -- key1, key2, kerb1, kerb2. |  |

### Return type

[**StorageAccountListKeysResult**](StorageAccountListKeysResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_accounts_restore_blob_ranges

> <BlobRestoreStatus> storage_accounts_restore_blob_ranges(api_version, subscription_id, resource_group_name, account_name, parameters)



Restore blobs in the specified blob ranges

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::BlobRestoreParameters.new({time_to_restore: Time.now, blob_ranges: [AzureRest::BlobRestoreRange.new({start_range: 'start_range_example', end_range: 'end_range_example'})]}) # BlobRestoreParameters | The parameters to provide for restore blob ranges.

begin
  
  result = api_instance.storage_accounts_restore_blob_ranges(api_version, subscription_id, resource_group_name, account_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_restore_blob_ranges: #{e}"
end
```

#### Using the storage_accounts_restore_blob_ranges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobRestoreStatus>, Integer, Hash)> storage_accounts_restore_blob_ranges_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_restore_blob_ranges_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobRestoreStatus>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_restore_blob_ranges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**BlobRestoreParameters**](BlobRestoreParameters.md) | The parameters to provide for restore blob ranges. |  |

### Return type

[**BlobRestoreStatus**](BlobRestoreStatus.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_accounts_revoke_user_delegation_keys

> storage_accounts_revoke_user_delegation_keys(api_version, subscription_id, resource_group_name, account_name)



Revoke user delegation keys.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  api_instance.storage_accounts_revoke_user_delegation_keys(api_version, subscription_id, resource_group_name, account_name)
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_revoke_user_delegation_keys: #{e}"
end
```

#### Using the storage_accounts_revoke_user_delegation_keys_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_accounts_revoke_user_delegation_keys_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_revoke_user_delegation_keys_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_revoke_user_delegation_keys_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_accounts_update

> <StorageAccount> storage_accounts_update(api_version, subscription_id, resource_group_name, account_name, parameters)



The update operation can be used to update the SKU, encryption, access tier, or tags for a storage account. It can also be used to map the account to a custom domain. Only one custom domain is supported per storage account; the replacement/change of custom domain is not supported. In order to replace an old custom domain, the old value must be cleared/unregistered before a new value can be set. The update of multiple properties is supported. This call does not change the storage keys for the account. If you want to change the storage account keys, use the regenerate keys operation. The location and name of the storage account cannot be changed after creation.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::StorageAccountUpdateParameters.new # StorageAccountUpdateParameters | The parameters to provide for the updated account.

begin
  
  result = api_instance.storage_accounts_update(api_version, subscription_id, resource_group_name, account_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_update: #{e}"
end
```

#### Using the storage_accounts_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageAccount>, Integer, Hash)> storage_accounts_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_accounts_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageAccount>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_accounts_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**StorageAccountUpdateParameters**](StorageAccountUpdateParameters.md) | The parameters to provide for the updated account. |  |

### Return type

[**StorageAccount**](StorageAccount.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_task_assignments_instances_report_list

> <StorageTaskReportSummary> storage_task_assignments_instances_report_list(api_version, subscription_id, resource_group_name, account_name, opts)



Fetch the report summary of all the storage task assignments and instances in an account

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::StorageAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  maxpagesize: 56, # Integer | Optional, specifies the maximum number of storage task assignment instances to be included in the list response.
  filter: 'filter_example' # String | Optional. When specified, it can be used to query using reporting properties. See [Constructing Filter Strings](https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#constructing-filter-strings) for details.
}

begin
  
  result = api_instance.storage_task_assignments_instances_report_list(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_task_assignments_instances_report_list: #{e}"
end
```

#### Using the storage_task_assignments_instances_report_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageTaskReportSummary>, Integer, Hash)> storage_task_assignments_instances_report_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.storage_task_assignments_instances_report_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageTaskReportSummary>
rescue AzureRest::ApiError => e
  puts "Error when calling StorageAccountsApi->storage_task_assignments_instances_report_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **maxpagesize** | **Integer** | Optional, specifies the maximum number of storage task assignment instances to be included in the list response. | [optional] |
| **filter** | **String** | Optional. When specified, it can be used to query using reporting properties. See [Constructing Filter Strings](https://learn.microsoft.com/rest/api/storageservices/querying-tables-and-entities#constructing-filter-strings) for details. | [optional] |

### Return type

[**StorageTaskReportSummary**](StorageTaskReportSummary.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


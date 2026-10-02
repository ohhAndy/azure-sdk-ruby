# AzureSDK::BlobAccessPointConfigurationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**blob_access_point_configurations_create**](BlobAccessPointConfigurationsApi.md#blob_access_point_configurations_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobAccessPointConfigurations/{blobAccessPointConfigurationName} |  |
| [**blob_access_point_configurations_delete**](BlobAccessPointConfigurationsApi.md#blob_access_point_configurations_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobAccessPointConfigurations/{blobAccessPointConfigurationName} |  |
| [**blob_access_point_configurations_get**](BlobAccessPointConfigurationsApi.md#blob_access_point_configurations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobAccessPointConfigurations/{blobAccessPointConfigurationName} |  |
| [**blob_access_point_configurations_list_by_storage_account**](BlobAccessPointConfigurationsApi.md#blob_access_point_configurations_list_by_storage_account) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobAccessPointConfigurations |  |
| [**blob_access_point_configurations_test_existing_connection**](BlobAccessPointConfigurationsApi.md#blob_access_point_configurations_test_existing_connection) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobAccessPointConfigurations/{blobAccessPointConfigurationName}/testExistingConnection |  |
| [**blob_access_point_configurations_update**](BlobAccessPointConfigurationsApi.md#blob_access_point_configurations_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobAccessPointConfigurations/{blobAccessPointConfigurationName} |  |


## blob_access_point_configurations_create

> <BlobAccessPointConfiguration> blob_access_point_configurations_create(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, resource)



Creates or updates a Blob Access Point configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobAccessPointConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
blob_access_point_configuration_name = 'blob_access_point_configuration_name_example' # String | The name of the Blob Access Point configuration.
resource = AzureSDK::BlobAccessPointConfiguration.new({location: 'location_example', properties: AzureSDK::BlobAccessPointConfigurationProperties.new({source: AzureSDK::BlobAccessPointSourceProperties.new({source_type: AzureSDK::BlobAccessPointSourceType::NET_APP_ONTAP})})}) # BlobAccessPointConfiguration | Resource create parameters.

begin
  
  result = api_instance.blob_access_point_configurations_create(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, resource)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_create: #{e}"
end
```

#### Using the blob_access_point_configurations_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobAccessPointConfiguration>, Integer, Hash)> blob_access_point_configurations_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, resource)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_access_point_configurations_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobAccessPointConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **blob_access_point_configuration_name** | **String** | The name of the Blob Access Point configuration. |  |
| **resource** | [**BlobAccessPointConfiguration**](BlobAccessPointConfiguration.md) | Resource create parameters. |  |

### Return type

[**BlobAccessPointConfiguration**](BlobAccessPointConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_access_point_configurations_delete

> blob_access_point_configurations_delete(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name)



Delete a Blob Access Point configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobAccessPointConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
blob_access_point_configuration_name = 'blob_access_point_configuration_name_example' # String | The name of the Blob Access Point configuration.

begin
  
  api_instance.blob_access_point_configurations_delete(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_delete: #{e}"
end
```

#### Using the blob_access_point_configurations_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> blob_access_point_configurations_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_access_point_configurations_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **blob_access_point_configuration_name** | **String** | The name of the Blob Access Point configuration. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_access_point_configurations_get

> <BlobAccessPointConfiguration> blob_access_point_configurations_get(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name)



Get the specified Blob Access Point configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobAccessPointConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
blob_access_point_configuration_name = 'blob_access_point_configuration_name_example' # String | The name of the Blob Access Point configuration.

begin
  
  result = api_instance.blob_access_point_configurations_get(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_get: #{e}"
end
```

#### Using the blob_access_point_configurations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobAccessPointConfiguration>, Integer, Hash)> blob_access_point_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_access_point_configurations_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobAccessPointConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **blob_access_point_configuration_name** | **String** | The name of the Blob Access Point configuration. |  |

### Return type

[**BlobAccessPointConfiguration**](BlobAccessPointConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_access_point_configurations_list_by_storage_account

> <BlobAccessPointConfigurationListResult> blob_access_point_configurations_list_by_storage_account(api_version, subscription_id, resource_group_name, account_name)



List all Blob Access Point configurations in a Storage Account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobAccessPointConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.blob_access_point_configurations_list_by_storage_account(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_list_by_storage_account: #{e}"
end
```

#### Using the blob_access_point_configurations_list_by_storage_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobAccessPointConfigurationListResult>, Integer, Hash)> blob_access_point_configurations_list_by_storage_account_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_access_point_configurations_list_by_storage_account_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobAccessPointConfigurationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_list_by_storage_account_with_http_info: #{e}"
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

[**BlobAccessPointConfigurationListResult**](BlobAccessPointConfigurationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_access_point_configurations_test_existing_connection

> <BlobAccessPointConnectionTestResponse> blob_access_point_configurations_test_existing_connection(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, body)



Test the connection configured on an existing Blob Access Point configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobAccessPointConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
blob_access_point_configuration_name = 'blob_access_point_configuration_name_example' # String | The name of the Blob Access Point configuration.
body = AzureSDK::BlobAccessPointConnectionTestRequest.new({unique_id: 'unique_id_example'}) # BlobAccessPointConnectionTestRequest | The content of the action request

begin
  
  result = api_instance.blob_access_point_configurations_test_existing_connection(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, body)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_test_existing_connection: #{e}"
end
```

#### Using the blob_access_point_configurations_test_existing_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobAccessPointConnectionTestResponse>, Integer, Hash)> blob_access_point_configurations_test_existing_connection_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, body)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_access_point_configurations_test_existing_connection_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobAccessPointConnectionTestResponse>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_test_existing_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **blob_access_point_configuration_name** | **String** | The name of the Blob Access Point configuration. |  |
| **body** | [**BlobAccessPointConnectionTestRequest**](BlobAccessPointConnectionTestRequest.md) | The content of the action request |  |

### Return type

[**BlobAccessPointConnectionTestResponse**](BlobAccessPointConnectionTestResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_access_point_configurations_update

> <BlobAccessPointConfiguration> blob_access_point_configurations_update(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, properties)



Update a Blob Access Point configuration.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobAccessPointConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
blob_access_point_configuration_name = 'blob_access_point_configuration_name_example' # String | The name of the Blob Access Point configuration.
properties = AzureSDK::BlobAccessPointConfigurationUpdate.new # BlobAccessPointConfigurationUpdate | The resource properties to be updated.

begin
  
  result = api_instance.blob_access_point_configurations_update(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, properties)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_update: #{e}"
end
```

#### Using the blob_access_point_configurations_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobAccessPointConfiguration>, Integer, Hash)> blob_access_point_configurations_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_access_point_configurations_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, blob_access_point_configuration_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobAccessPointConfiguration>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobAccessPointConfigurationsApi->blob_access_point_configurations_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **blob_access_point_configuration_name** | **String** | The name of the Blob Access Point configuration. |  |
| **properties** | [**BlobAccessPointConfigurationUpdate**](BlobAccessPointConfigurationUpdate.md) | The resource properties to be updated. |  |

### Return type

[**BlobAccessPointConfiguration**](BlobAccessPointConfiguration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


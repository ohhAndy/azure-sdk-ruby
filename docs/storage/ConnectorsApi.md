# AzureSDK::ConnectorsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**connectors_create**](ConnectorsApi.md#connectors_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/connectors/{connectorName} |  |
| [**connectors_delete**](ConnectorsApi.md#connectors_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/connectors/{connectorName} |  |
| [**connectors_get**](ConnectorsApi.md#connectors_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/connectors/{connectorName} |  |
| [**connectors_list_by_storage_account**](ConnectorsApi.md#connectors_list_by_storage_account) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/connectors |  |
| [**connectors_test_existing_connection**](ConnectorsApi.md#connectors_test_existing_connection) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/connectors/{connectorName}/testExistingConnection |  |
| [**connectors_update**](ConnectorsApi.md#connectors_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/connectors/{connectorName} |  |


## connectors_create

> <Connector> connectors_create(api_version, subscription_id, resource_group_name, account_name, connector_name, resource)



Create a Storage Connector if it does not already exist; otherwise, error out. This API will not allow you to replace an already existing resource.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConnectorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
connector_name = 'connector_name_example' # String | The name of the Storage Connector.
resource = AzureSDK::Connector.new({location: 'location_example', properties: AzureSDK::StorageConnectorProperties.new({data_source_type: AzureSDK::StorageConnectorDataSourceType::AZURE_DATA_SHARE, source: AzureSDK::StorageConnectorSource.new({type: AzureSDK::StorageConnectorSourceType::DATA_SHARE})})}) # Connector | Create a Storage Connector if it does not already exist; otherwise, error out. This API will not allow you to replace an already existing resource.

begin
  
  result = api_instance.connectors_create(api_version, subscription_id, resource_group_name, account_name, connector_name, resource)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_create: #{e}"
end
```

#### Using the connectors_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Connector>, Integer, Hash)> connectors_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name, resource)

```ruby
begin
  
  data, status_code, headers = api_instance.connectors_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name, resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Connector>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **connector_name** | **String** | The name of the Storage Connector. |  |
| **resource** | [**Connector**](Connector.md) | Create a Storage Connector if it does not already exist; otherwise, error out. This API will not allow you to replace an already existing resource. |  |

### Return type

[**Connector**](Connector.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## connectors_delete

> connectors_delete(api_version, subscription_id, resource_group_name, account_name, connector_name)



Delete a Storage Connector.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConnectorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
connector_name = 'connector_name_example' # String | The name of the Storage Connector.

begin
  
  api_instance.connectors_delete(api_version, subscription_id, resource_group_name, account_name, connector_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_delete: #{e}"
end
```

#### Using the connectors_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> connectors_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name)

```ruby
begin
  
  data, status_code, headers = api_instance.connectors_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **connector_name** | **String** | The name of the Storage Connector. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## connectors_get

> <Connector> connectors_get(api_version, subscription_id, resource_group_name, account_name, connector_name)



Get the specified Storage Connector.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConnectorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
connector_name = 'connector_name_example' # String | The name of the Storage Connector.

begin
  
  result = api_instance.connectors_get(api_version, subscription_id, resource_group_name, account_name, connector_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_get: #{e}"
end
```

#### Using the connectors_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Connector>, Integer, Hash)> connectors_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name)

```ruby
begin
  
  data, status_code, headers = api_instance.connectors_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Connector>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **connector_name** | **String** | The name of the Storage Connector. |  |

### Return type

[**Connector**](Connector.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## connectors_list_by_storage_account

> <ConnectorListResult> connectors_list_by_storage_account(api_version, subscription_id, resource_group_name, account_name)



List all Storage Connectors in a Storage Account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConnectorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.connectors_list_by_storage_account(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_list_by_storage_account: #{e}"
end
```

#### Using the connectors_list_by_storage_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectorListResult>, Integer, Hash)> connectors_list_by_storage_account_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.connectors_list_by_storage_account_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectorListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_list_by_storage_account_with_http_info: #{e}"
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

[**ConnectorListResult**](ConnectorListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## connectors_test_existing_connection

> <TestConnectionResponse> connectors_test_existing_connection(api_version, subscription_id, resource_group_name, account_name, connector_name, body)



This method is used to verify that the connection to the backing data store works. This API is designed to be used for monitoring and debugging purposes. From the caller’s perspective, this method does the following: Calls List on the backing data store, attempting to list up to one blob/object/etc. If the above succeeds, and if a blob/object/etc is found, calls Get on that object, attempting to download one byte.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConnectorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
connector_name = 'connector_name_example' # String | The name of the Storage Connector.
body = AzureSDK::TestExistingConnectionRequest.new({unique_id: 'unique_id_example'}) # TestExistingConnectionRequest | This method is used to verify that the connection to the backing data store works. This API is designed to be used for monitoring and debugging purposes. From the caller’s perspective, this method does the following: Calls List on the backing data store, attempting to list up to one blob/object/etc. If the above succeeds, and if a blob/object/etc is found, calls Get on that object, attempting to download one byte.

begin
  
  result = api_instance.connectors_test_existing_connection(api_version, subscription_id, resource_group_name, account_name, connector_name, body)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_test_existing_connection: #{e}"
end
```

#### Using the connectors_test_existing_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TestConnectionResponse>, Integer, Hash)> connectors_test_existing_connection_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name, body)

```ruby
begin
  
  data, status_code, headers = api_instance.connectors_test_existing_connection_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TestConnectionResponse>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_test_existing_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **connector_name** | **String** | The name of the Storage Connector. |  |
| **body** | [**TestExistingConnectionRequest**](TestExistingConnectionRequest.md) | This method is used to verify that the connection to the backing data store works. This API is designed to be used for monitoring and debugging purposes. From the caller’s perspective, this method does the following: Calls List on the backing data store, attempting to list up to one blob/object/etc. If the above succeeds, and if a blob/object/etc is found, calls Get on that object, attempting to download one byte. |  |

### Return type

[**TestConnectionResponse**](TestConnectionResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## connectors_update

> <Connector> connectors_update(api_version, subscription_id, resource_group_name, account_name, connector_name, properties)



Update a Storage Connector.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConnectorsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
connector_name = 'connector_name_example' # String | The name of the Storage Connector.
properties = AzureSDK::ConnectorUpdate.new # ConnectorUpdate | The updated properties of the Storage Connector.

begin
  
  result = api_instance.connectors_update(api_version, subscription_id, resource_group_name, account_name, connector_name, properties)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_update: #{e}"
end
```

#### Using the connectors_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Connector>, Integer, Hash)> connectors_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name, properties)

```ruby
begin
  
  data, status_code, headers = api_instance.connectors_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, connector_name, properties)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Connector>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConnectorsApi->connectors_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **connector_name** | **String** | The name of the Storage Connector. |  |
| **properties** | [**ConnectorUpdate**](ConnectorUpdate.md) | The updated properties of the Storage Connector. |  |

### Return type

[**Connector**](Connector.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


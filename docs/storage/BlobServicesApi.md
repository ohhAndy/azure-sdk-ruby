# AzureSDK::BlobServicesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**blob_containers_list**](BlobServicesApi.md#blob_containers_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers |  |
| [**blob_services_get_service_properties**](BlobServicesApi.md#blob_services_get_service_properties) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default |  |
| [**blob_services_list**](BlobServicesApi.md#blob_services_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices |  |
| [**blob_services_set_service_properties**](BlobServicesApi.md#blob_services_set_service_properties) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default |  |


## blob_containers_list

> <ListContainerItems> blob_containers_list(api_version, subscription_id, resource_group_name, account_name, opts)



Lists all containers and does not support a prefix like data plane. Also SRP today does not return continuation token.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  maxpagesize: 'maxpagesize_example', # String | Optional. Specified maximum number of containers that can be included in the list.
  filter: 'filter_example', # String | Optional. When specified, only container names starting with the filter will be listed.
  include: 'deleted' # String | Optional, used to include the properties for soft deleted blob containers.
}

begin
  
  result = api_instance.blob_containers_list(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobServicesApi->blob_containers_list: #{e}"
end
```

#### Using the blob_containers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListContainerItems>, Integer, Hash)> blob_containers_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListContainerItems>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobServicesApi->blob_containers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **maxpagesize** | **String** | Optional. Specified maximum number of containers that can be included in the list. | [optional] |
| **filter** | **String** | Optional. When specified, only container names starting with the filter will be listed. | [optional] |
| **include** | **String** | Optional, used to include the properties for soft deleted blob containers. | [optional] |

### Return type

[**ListContainerItems**](ListContainerItems.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_services_get_service_properties

> <BlobServiceProperties> blob_services_get_service_properties(api_version, subscription_id, resource_group_name, account_name)



Gets the properties of a storage account’s Blob service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.blob_services_get_service_properties(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobServicesApi->blob_services_get_service_properties: #{e}"
end
```

#### Using the blob_services_get_service_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobServiceProperties>, Integer, Hash)> blob_services_get_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_services_get_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobServiceProperties>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobServicesApi->blob_services_get_service_properties_with_http_info: #{e}"
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

[**BlobServiceProperties**](BlobServiceProperties.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_services_list

> <BlobServiceItems> blob_services_list(api_version, subscription_id, resource_group_name, account_name)



List blob services of storage account. It returns a collection of one object named default.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.blob_services_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobServicesApi->blob_services_list: #{e}"
end
```

#### Using the blob_services_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobServiceItems>, Integer, Hash)> blob_services_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_services_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobServiceItems>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobServicesApi->blob_services_list_with_http_info: #{e}"
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

[**BlobServiceItems**](BlobServiceItems.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_services_set_service_properties

> <BlobServiceProperties> blob_services_set_service_properties(api_version, subscription_id, resource_group_name, account_name, parameters)



Sets the properties of a storage account’s Blob service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureSDK::BlobServiceProperties.new # BlobServiceProperties | The properties of a storage account’s Blob service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.

begin
  
  result = api_instance.blob_services_set_service_properties(api_version, subscription_id, resource_group_name, account_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobServicesApi->blob_services_set_service_properties: #{e}"
end
```

#### Using the blob_services_set_service_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobServiceProperties>, Integer, Hash)> blob_services_set_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_services_set_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobServiceProperties>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobServicesApi->blob_services_set_service_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**BlobServiceProperties**](BlobServiceProperties.md) | The properties of a storage account’s Blob service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules. |  |

### Return type

[**BlobServiceProperties**](BlobServiceProperties.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


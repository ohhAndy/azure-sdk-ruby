# AzureRest::QueueServicesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**queue_list**](QueueServicesApi.md#queue_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices/default/queues |  |
| [**queue_services_get_service_properties**](QueueServicesApi.md#queue_services_get_service_properties) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices/default |  |
| [**queue_services_list**](QueueServicesApi.md#queue_services_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices |  |
| [**queue_services_set_service_properties**](QueueServicesApi.md#queue_services_set_service_properties) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices/default |  |


## queue_list

> <ListQueueResource> queue_list(api_version, subscription_id, resource_group_name, account_name, opts)



Gets a list of all the queues under the specified storage account

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::QueueServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
opts = {
  maxpagesize: 'maxpagesize_example', # String | Optional, a maximum number of queues that should be included in a list queue response
  filter: 'filter_example' # String | Optional, When specified, only the queues with a name starting with the given filter will be listed.
}

begin
  
  result = api_instance.queue_list(api_version, subscription_id, resource_group_name, account_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling QueueServicesApi->queue_list: #{e}"
end
```

#### Using the queue_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListQueueResource>, Integer, Hash)> queue_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.queue_list_with_http_info(api_version, subscription_id, resource_group_name, account_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListQueueResource>
rescue AzureRest::ApiError => e
  puts "Error when calling QueueServicesApi->queue_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **maxpagesize** | **String** | Optional, a maximum number of queues that should be included in a list queue response | [optional] |
| **filter** | **String** | Optional, When specified, only the queues with a name starting with the given filter will be listed. | [optional] |

### Return type

[**ListQueueResource**](ListQueueResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## queue_services_get_service_properties

> <QueueServiceProperties> queue_services_get_service_properties(api_version, subscription_id, resource_group_name, account_name)



Gets the properties of a storage account’s Queue service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::QueueServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.queue_services_get_service_properties(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling QueueServicesApi->queue_services_get_service_properties: #{e}"
end
```

#### Using the queue_services_get_service_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueServiceProperties>, Integer, Hash)> queue_services_get_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.queue_services_get_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueServiceProperties>
rescue AzureRest::ApiError => e
  puts "Error when calling QueueServicesApi->queue_services_get_service_properties_with_http_info: #{e}"
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

[**QueueServiceProperties**](QueueServiceProperties.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## queue_services_list

> <ListQueueServices> queue_services_list(api_version, subscription_id, resource_group_name, account_name)



List all queue services for the storage account

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::QueueServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.queue_services_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling QueueServicesApi->queue_services_list: #{e}"
end
```

#### Using the queue_services_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListQueueServices>, Integer, Hash)> queue_services_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.queue_services_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListQueueServices>
rescue AzureRest::ApiError => e
  puts "Error when calling QueueServicesApi->queue_services_list_with_http_info: #{e}"
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

[**ListQueueServices**](ListQueueServices.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## queue_services_set_service_properties

> <QueueServiceProperties> queue_services_set_service_properties(api_version, subscription_id, resource_group_name, account_name, parameters)



Sets the properties of a storage account’s Queue service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::QueueServicesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
parameters = AzureRest::QueueServiceProperties.new # QueueServiceProperties | The properties of a storage account’s Queue service, only properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules can be specified.

begin
  
  result = api_instance.queue_services_set_service_properties(api_version, subscription_id, resource_group_name, account_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling QueueServicesApi->queue_services_set_service_properties: #{e}"
end
```

#### Using the queue_services_set_service_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueServiceProperties>, Integer, Hash)> queue_services_set_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.queue_services_set_service_properties_with_http_info(api_version, subscription_id, resource_group_name, account_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueServiceProperties>
rescue AzureRest::ApiError => e
  puts "Error when calling QueueServicesApi->queue_services_set_service_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **parameters** | [**QueueServiceProperties**](QueueServiceProperties.md) | The properties of a storage account’s Queue service, only properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules can be specified. |  |

### Return type

[**QueueServiceProperties**](QueueServiceProperties.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


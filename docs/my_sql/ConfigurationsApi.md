# AzureSDK::ConfigurationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**configurations_batch_update**](ConfigurationsApi.md#configurations_batch_update) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/updateConfigurations |  |
| [**configurations_create_or_update**](ConfigurationsApi.md#configurations_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/configurations/{configurationName} |  |
| [**configurations_get**](ConfigurationsApi.md#configurations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/configurations/{configurationName} |  |
| [**configurations_list_by_server**](ConfigurationsApi.md#configurations_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/configurations |  |
| [**configurations_update**](ConfigurationsApi.md#configurations_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/configurations/{configurationName} |  |


## configurations_batch_update

> <ConfigurationListResult> configurations_batch_update(api_version, subscription_id, resource_group_name, server_name, parameters)



Update a list of configurations in a given server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
parameters = AzureSDK::ConfigurationListForBatchUpdate.new # ConfigurationListForBatchUpdate | The parameters for updating a list of server configuration.

begin
  
  result = api_instance.configurations_batch_update(api_version, subscription_id, resource_group_name, server_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_batch_update: #{e}"
end
```

#### Using the configurations_batch_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConfigurationListResult>, Integer, Hash)> configurations_batch_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.configurations_batch_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConfigurationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_batch_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **parameters** | [**ConfigurationListForBatchUpdate**](ConfigurationListForBatchUpdate.md) | The parameters for updating a list of server configuration. |  |

### Return type

[**ConfigurationListResult**](ConfigurationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## configurations_create_or_update

> <Configuration> configurations_create_or_update(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)



Updates a configuration of a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
configuration_name = 'configuration_name_example' # String | The name of the server configuration.
parameters = AzureSDK::Configuration.new # Configuration | The required parameters for updating a server configuration.

begin
  
  result = api_instance.configurations_create_or_update(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_create_or_update: #{e}"
end
```

#### Using the configurations_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Configuration>, Integer, Hash)> configurations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.configurations_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Configuration>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **configuration_name** | **String** | The name of the server configuration. |  |
| **parameters** | [**Configuration**](Configuration.md) | The required parameters for updating a server configuration. |  |

### Return type

[**Configuration**](Configuration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## configurations_get

> <Configuration> configurations_get(api_version, subscription_id, resource_group_name, server_name, configuration_name)



Gets information about a configuration of server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
configuration_name = 'configuration_name_example' # String | The name of the server configuration.

begin
  
  result = api_instance.configurations_get(api_version, subscription_id, resource_group_name, server_name, configuration_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_get: #{e}"
end
```

#### Using the configurations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Configuration>, Integer, Hash)> configurations_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.configurations_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Configuration>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **configuration_name** | **String** | The name of the server configuration. |  |

### Return type

[**Configuration**](Configuration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## configurations_list_by_server

> <ConfigurationListResult> configurations_list_by_server(api_version, subscription_id, resource_group_name, server_name, opts)



List all the configurations in a given server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
opts = {
  tags: 'tags_example', # String | The tags of the server configuration.
  keyword: 'keyword_example', # String | The keyword of the server configuration.
  page: 56, # Integer | The page of the server configuration.
  page_size: 56 # Integer | The pageSize of the server configuration.
}

begin
  
  result = api_instance.configurations_list_by_server(api_version, subscription_id, resource_group_name, server_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_list_by_server: #{e}"
end
```

#### Using the configurations_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConfigurationListResult>, Integer, Hash)> configurations_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.configurations_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConfigurationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_list_by_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **tags** | **String** | The tags of the server configuration. | [optional] |
| **keyword** | **String** | The keyword of the server configuration. | [optional] |
| **page** | **Integer** | The page of the server configuration. | [optional] |
| **page_size** | **Integer** | The pageSize of the server configuration. | [optional] |

### Return type

[**ConfigurationListResult**](ConfigurationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## configurations_update

> <Configuration> configurations_update(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)



Updates a configuration of a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ConfigurationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
configuration_name = 'configuration_name_example' # String | The name of the server configuration.
parameters = AzureSDK::Configuration.new # Configuration | The required parameters for updating a server configuration.

begin
  
  result = api_instance.configurations_update(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_update: #{e}"
end
```

#### Using the configurations_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Configuration>, Integer, Hash)> configurations_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.configurations_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Configuration>
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **configuration_name** | **String** | The name of the server configuration. |  |
| **parameters** | [**Configuration**](Configuration.md) | The required parameters for updating a server configuration. |  |

### Return type

[**Configuration**](Configuration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


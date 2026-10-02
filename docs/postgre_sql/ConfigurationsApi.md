# AzureSDK::ConfigurationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**configurations_get**](ConfigurationsApi.md#configurations_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/configurations/{configurationName} |  |
| [**configurations_list_by_server**](ConfigurationsApi.md#configurations_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/configurations |  |
| [**configurations_put**](ConfigurationsApi.md#configurations_put) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/configurations/{configurationName} |  |
| [**configurations_update**](ConfigurationsApi.md#configurations_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/configurations/{configurationName} |  |


## configurations_get

> <Configuration> configurations_get(api_version, subscription_id, resource_group_name, server_name, configuration_name)



Gets information about a specific configuration (also known as server parameter) of a server.

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
configuration_name = 'configuration_name_example' # String | Name of the configuration (also known as server parameter).

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
| **configuration_name** | **String** | Name of the configuration (also known as server parameter). |  |

### Return type

[**Configuration**](Configuration.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## configurations_list_by_server

> <ConfigurationList> configurations_list_by_server(api_version, subscription_id, resource_group_name, server_name)



Lists all configurations (also known as server parameters) of a server.

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

begin
  
  result = api_instance.configurations_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_list_by_server: #{e}"
end
```

#### Using the configurations_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConfigurationList>, Integer, Hash)> configurations_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.configurations_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConfigurationList>
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

### Return type

[**ConfigurationList**](ConfigurationList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## configurations_put

> configurations_put(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)



Updates, using Put verb, the value assigned to a specific modifiable configuration (also known as server parameter) of a server.

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
configuration_name = 'configuration_name_example' # String | Name of the configuration (also known as server parameter).
parameters = AzureSDK::ConfigurationForUpdate.new # ConfigurationForUpdate | Parameters required to update the value of a specific modifiable configuration (also known as server parameter).

begin
  
  api_instance.configurations_put(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_put: #{e}"
end
```

#### Using the configurations_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> configurations_put_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.configurations_put_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **configuration_name** | **String** | Name of the configuration (also known as server parameter). |  |
| **parameters** | [**ConfigurationForUpdate**](ConfigurationForUpdate.md) | Parameters required to update the value of a specific modifiable configuration (also known as server parameter). |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## configurations_update

> configurations_update(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)



Updates the value assigned to a specific modifiable configuration (also known as server parameter) of a server.

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
configuration_name = 'configuration_name_example' # String | Name of the configuration (also known as server parameter).
parameters = AzureSDK::ConfigurationForUpdate.new # ConfigurationForUpdate | Parameters required to update the value of a specific modifiable configuration (also known as server parameter).

begin
  
  api_instance.configurations_update(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling ConfigurationsApi->configurations_update: #{e}"
end
```

#### Using the configurations_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> configurations_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.configurations_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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
| **configuration_name** | **String** | Name of the configuration (also known as server parameter). |  |
| **parameters** | [**ConfigurationForUpdate**](ConfigurationForUpdate.md) | Parameters required to update the value of a specific modifiable configuration (also known as server parameter). |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


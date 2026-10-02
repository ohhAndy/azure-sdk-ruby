# AzureSDK::TuningOptionsOperationGroupApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tuning_options_get**](TuningOptionsOperationGroupApi.md#tuning_options_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/tuningOptions/{tuningOption} |  |
| [**tuning_options_list_by_server**](TuningOptionsOperationGroupApi.md#tuning_options_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/tuningOptions |  |
| [**tuning_options_list_recommendations**](TuningOptionsOperationGroupApi.md#tuning_options_list_recommendations) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/tuningOptions/{tuningOption}/recommendations |  |


## tuning_options_get

> <TuningOptions> tuning_options_get(api_version, subscription_id, resource_group_name, server_name, tuning_option)



Gets the tuning options of a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TuningOptionsOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
tuning_option = 'index' # String | The name of the tuning option.

begin
  
  result = api_instance.tuning_options_get(api_version, subscription_id, resource_group_name, server_name, tuning_option)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TuningOptionsOperationGroupApi->tuning_options_get: #{e}"
end
```

#### Using the tuning_options_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TuningOptions>, Integer, Hash)> tuning_options_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, tuning_option)

```ruby
begin
  
  data, status_code, headers = api_instance.tuning_options_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, tuning_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TuningOptions>
rescue AzureSDK::ApiError => e
  puts "Error when calling TuningOptionsOperationGroupApi->tuning_options_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **tuning_option** | **String** | The name of the tuning option. |  |

### Return type

[**TuningOptions**](TuningOptions.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tuning_options_list_by_server

> <TuningOptionsList> tuning_options_list_by_server(api_version, subscription_id, resource_group_name, server_name)



Lists the tuning options of a server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TuningOptionsOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.tuning_options_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TuningOptionsOperationGroupApi->tuning_options_list_by_server: #{e}"
end
```

#### Using the tuning_options_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TuningOptionsList>, Integer, Hash)> tuning_options_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.tuning_options_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TuningOptionsList>
rescue AzureSDK::ApiError => e
  puts "Error when calling TuningOptionsOperationGroupApi->tuning_options_list_by_server_with_http_info: #{e}"
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

[**TuningOptionsList**](TuningOptionsList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tuning_options_list_recommendations

> <ObjectRecommendationList> tuning_options_list_recommendations(api_version, subscription_id, resource_group_name, server_name, tuning_option, opts)



Lists available object recommendations.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::TuningOptionsOperationGroupApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
tuning_option = 'index' # String | The name of the tuning option.
opts = {
  recommendation_type: 'CreateIndex' # String | Recommendations list filter. Retrieves recommendations based on type.
}

begin
  
  result = api_instance.tuning_options_list_recommendations(api_version, subscription_id, resource_group_name, server_name, tuning_option, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling TuningOptionsOperationGroupApi->tuning_options_list_recommendations: #{e}"
end
```

#### Using the tuning_options_list_recommendations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectRecommendationList>, Integer, Hash)> tuning_options_list_recommendations_with_http_info(api_version, subscription_id, resource_group_name, server_name, tuning_option, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tuning_options_list_recommendations_with_http_info(api_version, subscription_id, resource_group_name, server_name, tuning_option, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectRecommendationList>
rescue AzureSDK::ApiError => e
  puts "Error when calling TuningOptionsOperationGroupApi->tuning_options_list_recommendations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **tuning_option** | **String** | The name of the tuning option. |  |
| **recommendation_type** | **String** | Recommendations list filter. Retrieves recommendations based on type. | [optional] |

### Return type

[**ObjectRecommendationList**](ObjectRecommendationList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


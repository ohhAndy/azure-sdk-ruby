# AzureRest::NetworkProfilesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**network_profiles_create_or_update**](NetworkProfilesApi.md#network_profiles_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkProfiles/{networkProfileName} |  |
| [**network_profiles_delete**](NetworkProfilesApi.md#network_profiles_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkProfiles/{networkProfileName} |  |
| [**network_profiles_get**](NetworkProfilesApi.md#network_profiles_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkProfiles/{networkProfileName} |  |
| [**network_profiles_list**](NetworkProfilesApi.md#network_profiles_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkProfiles |  |
| [**network_profiles_list_all**](NetworkProfilesApi.md#network_profiles_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/networkProfiles |  |
| [**network_profiles_update_tags**](NetworkProfilesApi.md#network_profiles_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkProfiles/{networkProfileName} |  |


## network_profiles_create_or_update

> <NetworkProfile> network_profiles_create_or_update(api_version, subscription_id, resource_group_name, network_profile_name, parameters)



Creates or updates a network profile.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkProfilesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_profile_name = 'network_profile_name_example' # String | The name of the public IP prefix.
parameters = AzureRest::NetworkProfile.new # NetworkProfile | Parameters supplied to the create or update network profile operation.

begin
  
  result = api_instance.network_profiles_create_or_update(api_version, subscription_id, resource_group_name, network_profile_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_create_or_update: #{e}"
end
```

#### Using the network_profiles_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfile>, Integer, Hash)> network_profiles_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_profile_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.network_profiles_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_profile_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfile>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_profile_name** | **String** | The name of the public IP prefix. |  |
| **parameters** | [**NetworkProfile**](NetworkProfile.md) | Parameters supplied to the create or update network profile operation. |  |

### Return type

[**NetworkProfile**](NetworkProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## network_profiles_delete

> network_profiles_delete(api_version, subscription_id, resource_group_name, network_profile_name)



Deletes the specified network profile.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkProfilesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_profile_name = 'network_profile_name_example' # String | The name of the public IP prefix.

begin
  
  api_instance.network_profiles_delete(api_version, subscription_id, resource_group_name, network_profile_name)
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_delete: #{e}"
end
```

#### Using the network_profiles_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> network_profiles_delete_with_http_info(api_version, subscription_id, resource_group_name, network_profile_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_profiles_delete_with_http_info(api_version, subscription_id, resource_group_name, network_profile_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_profile_name** | **String** | The name of the public IP prefix. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_profiles_get

> <NetworkProfile> network_profiles_get(api_version, subscription_id, resource_group_name, network_profile_name, opts)



Gets the specified network profile in a specified resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkProfilesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_profile_name = 'network_profile_name_example' # String | The name of the public IP prefix.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.network_profiles_get(api_version, subscription_id, resource_group_name, network_profile_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_get: #{e}"
end
```

#### Using the network_profiles_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfile>, Integer, Hash)> network_profiles_get_with_http_info(api_version, subscription_id, resource_group_name, network_profile_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.network_profiles_get_with_http_info(api_version, subscription_id, resource_group_name, network_profile_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfile>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_profile_name** | **String** | The name of the public IP prefix. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**NetworkProfile**](NetworkProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_profiles_list

> <NetworkProfileListResult> network_profiles_list(api_version, subscription_id, resource_group_name)



Gets all network profiles in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkProfilesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.network_profiles_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_list: #{e}"
end
```

#### Using the network_profiles_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileListResult>, Integer, Hash)> network_profiles_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.network_profiles_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**NetworkProfileListResult**](NetworkProfileListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_profiles_list_all

> <NetworkProfileListResult> network_profiles_list_all(api_version, subscription_id)



Gets all the network profiles in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkProfilesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.network_profiles_list_all(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_list_all: #{e}"
end
```

#### Using the network_profiles_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileListResult>, Integer, Hash)> network_profiles_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.network_profiles_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**NetworkProfileListResult**](NetworkProfileListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## network_profiles_update_tags

> <NetworkProfile> network_profiles_update_tags(api_version, subscription_id, resource_group_name, network_profile_name, parameters)



Updates network profile tags.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::NetworkProfilesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_profile_name = 'network_profile_name_example' # String | The name of the public IP prefix.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to update network profile tags.

begin
  
  result = api_instance.network_profiles_update_tags(api_version, subscription_id, resource_group_name, network_profile_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_update_tags: #{e}"
end
```

#### Using the network_profiles_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfile>, Integer, Hash)> network_profiles_update_tags_with_http_info(api_version, subscription_id, resource_group_name, network_profile_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.network_profiles_update_tags_with_http_info(api_version, subscription_id, resource_group_name, network_profile_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfile>
rescue AzureRest::ApiError => e
  puts "Error when calling NetworkProfilesApi->network_profiles_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_profile_name** | **String** | The name of the public IP prefix. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update network profile tags. |  |

### Return type

[**NetworkProfile**](NetworkProfile.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


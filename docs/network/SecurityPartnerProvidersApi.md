# AzureRest::SecurityPartnerProvidersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**security_partner_providers_create_or_update**](SecurityPartnerProvidersApi.md#security_partner_providers_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/securityPartnerProviders/{securityPartnerProviderName} |  |
| [**security_partner_providers_delete**](SecurityPartnerProvidersApi.md#security_partner_providers_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/securityPartnerProviders/{securityPartnerProviderName} |  |
| [**security_partner_providers_get**](SecurityPartnerProvidersApi.md#security_partner_providers_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/securityPartnerProviders/{securityPartnerProviderName} |  |
| [**security_partner_providers_list**](SecurityPartnerProvidersApi.md#security_partner_providers_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/securityPartnerProviders |  |
| [**security_partner_providers_list_by_resource_group**](SecurityPartnerProvidersApi.md#security_partner_providers_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/securityPartnerProviders |  |
| [**security_partner_providers_update_tags**](SecurityPartnerProvidersApi.md#security_partner_providers_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/securityPartnerProviders/{securityPartnerProviderName} |  |


## security_partner_providers_create_or_update

> <SecurityPartnerProvider> security_partner_providers_create_or_update(api_version, subscription_id, resource_group_name, security_partner_provider_name, parameters)



Creates or updates the specified Security Partner Provider.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityPartnerProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
security_partner_provider_name = 'security_partner_provider_name_example' # String | The name of the Security Partner Provider.
parameters = AzureRest::SecurityPartnerProvider.new # SecurityPartnerProvider | Parameters supplied to the create or update Security Partner Provider operation.

begin
  
  result = api_instance.security_partner_providers_create_or_update(api_version, subscription_id, resource_group_name, security_partner_provider_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_create_or_update: #{e}"
end
```

#### Using the security_partner_providers_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityPartnerProvider>, Integer, Hash)> security_partner_providers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, security_partner_provider_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.security_partner_providers_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, security_partner_provider_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityPartnerProvider>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **security_partner_provider_name** | **String** | The name of the Security Partner Provider. |  |
| **parameters** | [**SecurityPartnerProvider**](SecurityPartnerProvider.md) | Parameters supplied to the create or update Security Partner Provider operation. |  |

### Return type

[**SecurityPartnerProvider**](SecurityPartnerProvider.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## security_partner_providers_delete

> security_partner_providers_delete(api_version, subscription_id, resource_group_name, security_partner_provider_name)



Deletes the specified Security Partner Provider.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityPartnerProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
security_partner_provider_name = 'security_partner_provider_name_example' # String | The name of the Security Partner Provider.

begin
  
  api_instance.security_partner_providers_delete(api_version, subscription_id, resource_group_name, security_partner_provider_name)
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_delete: #{e}"
end
```

#### Using the security_partner_providers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> security_partner_providers_delete_with_http_info(api_version, subscription_id, resource_group_name, security_partner_provider_name)

```ruby
begin
  
  data, status_code, headers = api_instance.security_partner_providers_delete_with_http_info(api_version, subscription_id, resource_group_name, security_partner_provider_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **security_partner_provider_name** | **String** | The name of the Security Partner Provider. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_partner_providers_get

> <SecurityPartnerProvider> security_partner_providers_get(api_version, subscription_id, resource_group_name, security_partner_provider_name)



Gets the specified Security Partner Provider.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityPartnerProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
security_partner_provider_name = 'security_partner_provider_name_example' # String | The name of the Security Partner Provider.

begin
  
  result = api_instance.security_partner_providers_get(api_version, subscription_id, resource_group_name, security_partner_provider_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_get: #{e}"
end
```

#### Using the security_partner_providers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityPartnerProvider>, Integer, Hash)> security_partner_providers_get_with_http_info(api_version, subscription_id, resource_group_name, security_partner_provider_name)

```ruby
begin
  
  data, status_code, headers = api_instance.security_partner_providers_get_with_http_info(api_version, subscription_id, resource_group_name, security_partner_provider_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityPartnerProvider>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **security_partner_provider_name** | **String** | The name of the Security Partner Provider. |  |

### Return type

[**SecurityPartnerProvider**](SecurityPartnerProvider.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_partner_providers_list

> <SecurityPartnerProviderListResult> security_partner_providers_list(api_version, subscription_id)



Gets all the Security Partner Providers in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityPartnerProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.security_partner_providers_list(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_list: #{e}"
end
```

#### Using the security_partner_providers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityPartnerProviderListResult>, Integer, Hash)> security_partner_providers_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.security_partner_providers_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityPartnerProviderListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**SecurityPartnerProviderListResult**](SecurityPartnerProviderListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_partner_providers_list_by_resource_group

> <SecurityPartnerProviderListResult> security_partner_providers_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all Security Partner Providers in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityPartnerProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.security_partner_providers_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_list_by_resource_group: #{e}"
end
```

#### Using the security_partner_providers_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityPartnerProviderListResult>, Integer, Hash)> security_partner_providers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.security_partner_providers_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityPartnerProviderListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**SecurityPartnerProviderListResult**](SecurityPartnerProviderListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_partner_providers_update_tags

> <SecurityPartnerProvider> security_partner_providers_update_tags(api_version, subscription_id, resource_group_name, security_partner_provider_name, parameters)



Updates tags of a Security Partner Provider resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityPartnerProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
security_partner_provider_name = 'security_partner_provider_name_example' # String | The name of the Security Partner Provider.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to update Security Partner Provider tags.

begin
  
  result = api_instance.security_partner_providers_update_tags(api_version, subscription_id, resource_group_name, security_partner_provider_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_update_tags: #{e}"
end
```

#### Using the security_partner_providers_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityPartnerProvider>, Integer, Hash)> security_partner_providers_update_tags_with_http_info(api_version, subscription_id, resource_group_name, security_partner_provider_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.security_partner_providers_update_tags_with_http_info(api_version, subscription_id, resource_group_name, security_partner_provider_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityPartnerProvider>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityPartnerProvidersApi->security_partner_providers_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **security_partner_provider_name** | **String** | The name of the Security Partner Provider. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update Security Partner Provider tags. |  |

### Return type

[**SecurityPartnerProvider**](SecurityPartnerProvider.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


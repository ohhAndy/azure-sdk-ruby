# AzureSDK::ProvidersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**provider_resource_types_list**](ProvidersApi.md#provider_resource_types_list) | **GET** /subscriptions/{subscriptionId}/providers/{resourceProviderNamespace}/resourceTypes |  |
| [**providers_get**](ProvidersApi.md#providers_get) | **GET** /subscriptions/{subscriptionId}/providers/{resourceProviderNamespace} |  |
| [**providers_get_at_tenant_scope**](ProvidersApi.md#providers_get_at_tenant_scope) | **GET** /providers/{resourceProviderNamespace} |  |
| [**providers_list**](ProvidersApi.md#providers_list) | **GET** /subscriptions/{subscriptionId}/providers |  |
| [**providers_list_at_tenant_scope**](ProvidersApi.md#providers_list_at_tenant_scope) | **GET** /providers |  |
| [**providers_provider_permissions**](ProvidersApi.md#providers_provider_permissions) | **GET** /subscriptions/{subscriptionId}/providers/{resourceProviderNamespace}/providerPermissions |  |
| [**providers_register**](ProvidersApi.md#providers_register) | **POST** /subscriptions/{subscriptionId}/providers/{resourceProviderNamespace}/register |  |
| [**providers_register_at_management_group_scope**](ProvidersApi.md#providers_register_at_management_group_scope) | **POST** /providers/Microsoft.Management/managementGroups/{groupId}/providers/{resourceProviderNamespace}/register |  |
| [**providers_unregister**](ProvidersApi.md#providers_unregister) | **POST** /subscriptions/{subscriptionId}/providers/{resourceProviderNamespace}/unregister |  |


## provider_resource_types_list

> <ProviderResourceTypeListResult> provider_resource_types_list(api_version, subscription_id, resource_provider_namespace, opts)



List the resource types for a specified resource provider.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The namespace of the resource provider.
opts = {
  expand: 'expand_example' # String | The $expand query parameter.
}

begin
  
  result = api_instance.provider_resource_types_list(api_version, subscription_id, resource_provider_namespace, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->provider_resource_types_list: #{e}"
end
```

#### Using the provider_resource_types_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderResourceTypeListResult>, Integer, Hash)> provider_resource_types_list_with_http_info(api_version, subscription_id, resource_provider_namespace, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.provider_resource_types_list_with_http_info(api_version, subscription_id, resource_provider_namespace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderResourceTypeListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->provider_resource_types_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_provider_namespace** | **String** | The namespace of the resource provider. |  |
| **expand** | **String** | The $expand query parameter. | [optional] |

### Return type

[**ProviderResourceTypeListResult**](ProviderResourceTypeListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## providers_get

> <Provider> providers_get(api_version, resource_provider_namespace, subscription_id, opts)



Gets the specified resource provider.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The namespace of the resource provider.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
opts = {
  expand: 'expand_example' # String | The $expand query parameter. For example, to include property aliases in response, use $expand=resourceTypes/aliases.
}

begin
  
  result = api_instance.providers_get(api_version, resource_provider_namespace, subscription_id, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_get: #{e}"
end
```

#### Using the providers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Provider>, Integer, Hash)> providers_get_with_http_info(api_version, resource_provider_namespace, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.providers_get_with_http_info(api_version, resource_provider_namespace, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Provider>
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **resource_provider_namespace** | **String** | The namespace of the resource provider. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **expand** | **String** | The $expand query parameter. For example, to include property aliases in response, use $expand&#x3D;resourceTypes/aliases. | [optional] |

### Return type

[**Provider**](Provider.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## providers_get_at_tenant_scope

> <Provider> providers_get_at_tenant_scope(api_version, resource_provider_namespace, opts)



Gets the specified resource provider at the tenant level.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The namespace of the resource provider.
opts = {
  expand: 'expand_example' # String | The $expand query parameter. For example, to include property aliases in response, use $expand=resourceTypes/aliases.
}

begin
  
  result = api_instance.providers_get_at_tenant_scope(api_version, resource_provider_namespace, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_get_at_tenant_scope: #{e}"
end
```

#### Using the providers_get_at_tenant_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Provider>, Integer, Hash)> providers_get_at_tenant_scope_with_http_info(api_version, resource_provider_namespace, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.providers_get_at_tenant_scope_with_http_info(api_version, resource_provider_namespace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Provider>
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_get_at_tenant_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **resource_provider_namespace** | **String** | The namespace of the resource provider. |  |
| **expand** | **String** | The $expand query parameter. For example, to include property aliases in response, use $expand&#x3D;resourceTypes/aliases. | [optional] |

### Return type

[**Provider**](Provider.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## providers_list

> <ProviderListResult> providers_list(api_version, subscription_id, opts)



Gets all resource providers for a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
opts = {
  expand: 'expand_example' # String | The properties to include in the results. For example, use &$expand=metadata in the query string to retrieve resource provider metadata. To include property aliases in response, use $expand=resourceTypes/aliases.
}

begin
  
  result = api_instance.providers_list(api_version, subscription_id, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_list: #{e}"
end
```

#### Using the providers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderListResult>, Integer, Hash)> providers_list_with_http_info(api_version, subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.providers_list_with_http_info(api_version, subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **expand** | **String** | The properties to include in the results. For example, use &amp;$expand&#x3D;metadata in the query string to retrieve resource provider metadata. To include property aliases in response, use $expand&#x3D;resourceTypes/aliases. | [optional] |

### Return type

[**ProviderListResult**](ProviderListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## providers_list_at_tenant_scope

> <ProviderListResult> providers_list_at_tenant_scope(api_version, opts)



Gets all resource providers for the tenant.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
opts = {
  expand: 'expand_example' # String | The properties to include in the results.
}

begin
  
  result = api_instance.providers_list_at_tenant_scope(api_version, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_list_at_tenant_scope: #{e}"
end
```

#### Using the providers_list_at_tenant_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderListResult>, Integer, Hash)> providers_list_at_tenant_scope_with_http_info(api_version, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.providers_list_at_tenant_scope_with_http_info(api_version, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_list_at_tenant_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **expand** | **String** | The properties to include in the results. | [optional] |

### Return type

[**ProviderListResult**](ProviderListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## providers_provider_permissions

> <ProviderPermissionListResult> providers_provider_permissions(api_version, subscription_id, resource_provider_namespace)



Get the provider permissions.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The namespace of the resource provider.

begin
  
  result = api_instance.providers_provider_permissions(api_version, subscription_id, resource_provider_namespace)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_provider_permissions: #{e}"
end
```

#### Using the providers_provider_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPermissionListResult>, Integer, Hash)> providers_provider_permissions_with_http_info(api_version, subscription_id, resource_provider_namespace)

```ruby
begin
  
  data, status_code, headers = api_instance.providers_provider_permissions_with_http_info(api_version, subscription_id, resource_provider_namespace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPermissionListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_provider_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_provider_namespace** | **String** | The namespace of the resource provider. |  |

### Return type

[**ProviderPermissionListResult**](ProviderPermissionListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## providers_register

> <Provider> providers_register(api_version, subscription_id, resource_provider_namespace, opts)



Registers a subscription with a resource provider.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The namespace of the resource provider to register.
opts = {
  properties: AzureSDK::ProviderRegistrationRequest.new # ProviderRegistrationRequest | The third party consent for S2S.
}

begin
  
  result = api_instance.providers_register(api_version, subscription_id, resource_provider_namespace, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_register: #{e}"
end
```

#### Using the providers_register_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Provider>, Integer, Hash)> providers_register_with_http_info(api_version, subscription_id, resource_provider_namespace, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.providers_register_with_http_info(api_version, subscription_id, resource_provider_namespace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Provider>
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_register_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_provider_namespace** | **String** | The namespace of the resource provider to register. |  |
| **properties** | [**ProviderRegistrationRequest**](ProviderRegistrationRequest.md) | The third party consent for S2S. | [optional] |

### Return type

[**Provider**](Provider.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## providers_register_at_management_group_scope

> providers_register_at_management_group_scope(api_version, resource_provider_namespace, group_id)



Registers a management group with a resource provider. Use this operation to register a resource provider with resource types that can be deployed at the management group scope. It does not recursively register subscriptions within the management group. Instead, you must register subscriptions individually.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The management group ID.The namespace of the resource provider to register.
group_id = 'group_id_example' # String | 

begin
  
  api_instance.providers_register_at_management_group_scope(api_version, resource_provider_namespace, group_id)
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_register_at_management_group_scope: #{e}"
end
```

#### Using the providers_register_at_management_group_scope_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> providers_register_at_management_group_scope_with_http_info(api_version, resource_provider_namespace, group_id)

```ruby
begin
  
  data, status_code, headers = api_instance.providers_register_at_management_group_scope_with_http_info(api_version, resource_provider_namespace, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_register_at_management_group_scope_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **resource_provider_namespace** | **String** | The management group ID.The namespace of the resource provider to register. |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## providers_unregister

> <Provider> providers_unregister(api_version, subscription_id, resource_provider_namespace)



Unregisters a subscription from a resource provider.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ProvidersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_provider_namespace = 'resource_provider_namespace_example' # String | The namespace of the resource provider to unregister.

begin
  
  result = api_instance.providers_unregister(api_version, subscription_id, resource_provider_namespace)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_unregister: #{e}"
end
```

#### Using the providers_unregister_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Provider>, Integer, Hash)> providers_unregister_with_http_info(api_version, subscription_id, resource_provider_namespace)

```ruby
begin
  
  data, status_code, headers = api_instance.providers_unregister_with_http_info(api_version, subscription_id, resource_provider_namespace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Provider>
rescue AzureSDK::ApiError => e
  puts "Error when calling ProvidersApi->providers_unregister_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_provider_namespace** | **String** | The namespace of the resource provider to unregister. |  |

### Return type

[**Provider**](Provider.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


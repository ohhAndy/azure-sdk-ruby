# AzureRest::ManagedNamespacesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**managed_namespaces_create_or_update**](ManagedNamespacesApi.md#managed_namespaces_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/managedNamespaces/{managedNamespaceName} |  |
| [**managed_namespaces_delete**](ManagedNamespacesApi.md#managed_namespaces_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/managedNamespaces/{managedNamespaceName} |  |
| [**managed_namespaces_get**](ManagedNamespacesApi.md#managed_namespaces_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/managedNamespaces/{managedNamespaceName} |  |
| [**managed_namespaces_list_by_managed_cluster**](ManagedNamespacesApi.md#managed_namespaces_list_by_managed_cluster) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/managedNamespaces |  |
| [**managed_namespaces_list_credential**](ManagedNamespacesApi.md#managed_namespaces_list_credential) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/managedNamespaces/{managedNamespaceName}/listCredential |  |
| [**managed_namespaces_update**](ManagedNamespacesApi.md#managed_namespaces_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/managedNamespaces/{managedNamespaceName} |  |


## managed_namespaces_create_or_update

> <ManagedNamespace> managed_namespaces_create_or_update(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name, parameters)



Creates or updates a namespace managed by ARM for the specified managed cluster. Users can configure aspects like resource quotas, network ingress/egress policies, and more. See aka.ms/aks/managed-namespaces for more details.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedNamespacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
managed_namespace_name = 'managed_namespace_name_example' # String | The name of the managed namespace.
parameters = AzureRest::ManagedNamespace.new({location: 'location_example'}) # ManagedNamespace | The namespace to create or update.

begin
  
  result = api_instance.managed_namespaces_create_or_update(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_create_or_update: #{e}"
end
```

#### Using the managed_namespaces_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedNamespace>, Integer, Hash)> managed_namespaces_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_namespaces_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedNamespace>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **managed_namespace_name** | **String** | The name of the managed namespace. |  |
| **parameters** | [**ManagedNamespace**](ManagedNamespace.md) | The namespace to create or update. |  |

### Return type

[**ManagedNamespace**](ManagedNamespace.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## managed_namespaces_delete

> managed_namespaces_delete(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)



Deletes a namespace.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedNamespacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
managed_namespace_name = 'managed_namespace_name_example' # String | The name of the managed namespace.

begin
  
  api_instance.managed_namespaces_delete(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_delete: #{e}"
end
```

#### Using the managed_namespaces_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_namespaces_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_namespaces_delete_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **managed_namespace_name** | **String** | The name of the managed namespace. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_namespaces_get

> <ManagedNamespace> managed_namespaces_get(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)



Gets the specified namespace of a managed cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedNamespacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
managed_namespace_name = 'managed_namespace_name_example' # String | The name of the managed namespace.

begin
  
  result = api_instance.managed_namespaces_get(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_get: #{e}"
end
```

#### Using the managed_namespaces_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedNamespace>, Integer, Hash)> managed_namespaces_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_namespaces_get_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedNamespace>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **managed_namespace_name** | **String** | The name of the managed namespace. |  |

### Return type

[**ManagedNamespace**](ManagedNamespace.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_namespaces_list_by_managed_cluster

> <ManagedNamespaceListResult> managed_namespaces_list_by_managed_cluster(api_version, subscription_id, resource_group_name, resource_name)



Gets a list of managed namespaces in the specified managed cluster.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedNamespacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.

begin
  
  result = api_instance.managed_namespaces_list_by_managed_cluster(api_version, subscription_id, resource_group_name, resource_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_list_by_managed_cluster: #{e}"
end
```

#### Using the managed_namespaces_list_by_managed_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedNamespaceListResult>, Integer, Hash)> managed_namespaces_list_by_managed_cluster_with_http_info(api_version, subscription_id, resource_group_name, resource_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_namespaces_list_by_managed_cluster_with_http_info(api_version, subscription_id, resource_group_name, resource_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedNamespaceListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_list_by_managed_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |

### Return type

[**ManagedNamespaceListResult**](ManagedNamespaceListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_namespaces_list_credential

> <CredentialResults> managed_namespaces_list_credential(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)



Lists the credentials of a namespace.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedNamespacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
managed_namespace_name = 'managed_namespace_name_example' # String | The name of the managed namespace.

begin
  
  result = api_instance.managed_namespaces_list_credential(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_list_credential: #{e}"
end
```

#### Using the managed_namespaces_list_credential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredentialResults>, Integer, Hash)> managed_namespaces_list_credential_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_namespaces_list_credential_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredentialResults>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_list_credential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **managed_namespace_name** | **String** | The name of the managed namespace. |  |

### Return type

[**CredentialResults**](CredentialResults.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_namespaces_update

> <ManagedNamespace> managed_namespaces_update(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name, parameters)



Updates tags on a managed namespace.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ManagedNamespacesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
resource_name = 'resource_name_example' # String | The name of the managed cluster resource.
managed_namespace_name = 'managed_namespace_name_example' # String | The name of the managed namespace.
parameters = AzureRest::TagsObject.new # TagsObject | Parameters supplied to the patch namespace operation, we only support patch tags for now.

begin
  
  result = api_instance.managed_namespaces_update(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_update: #{e}"
end
```

#### Using the managed_namespaces_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManagedNamespace>, Integer, Hash)> managed_namespaces_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_namespaces_update_with_http_info(api_version, subscription_id, resource_group_name, resource_name, managed_namespace_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManagedNamespace>
rescue AzureRest::ApiError => e
  puts "Error when calling ManagedNamespacesApi->managed_namespaces_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **resource_name** | **String** | The name of the managed cluster resource. |  |
| **managed_namespace_name** | **String** | The name of the managed namespace. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to the patch namespace operation, we only support patch tags for now. |  |

### Return type

[**ManagedNamespace**](ManagedNamespace.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


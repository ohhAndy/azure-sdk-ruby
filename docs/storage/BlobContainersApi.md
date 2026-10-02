# AzureSDK::BlobContainersApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**blob_containers_clear_legal_hold**](BlobContainersApi.md#blob_containers_clear_legal_hold) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/clearLegalHold |  |
| [**blob_containers_create**](BlobContainersApi.md#blob_containers_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName} |  |
| [**blob_containers_delete**](BlobContainersApi.md#blob_containers_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName} |  |
| [**blob_containers_get**](BlobContainersApi.md#blob_containers_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName} |  |
| [**blob_containers_lease**](BlobContainersApi.md#blob_containers_lease) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/lease |  |
| [**blob_containers_object_level_worm**](BlobContainersApi.md#blob_containers_object_level_worm) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/migrate |  |
| [**blob_containers_set_legal_hold**](BlobContainersApi.md#blob_containers_set_legal_hold) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/setLegalHold |  |
| [**blob_containers_update**](BlobContainersApi.md#blob_containers_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName} |  |


## blob_containers_clear_legal_hold

> <LegalHold> blob_containers_clear_legal_hold(api_version, subscription_id, resource_group_name, account_name, container_name, legal_hold)



Clears legal hold tags. Clearing the same or non-existent tag results in an idempotent operation. ClearLegalHold clears out only the specified tags in the request.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
legal_hold = AzureSDK::LegalHold.new({tags: ['tags_example']}) # LegalHold | The LegalHold property that will be clear from a blob container.

begin
  
  result = api_instance.blob_containers_clear_legal_hold(api_version, subscription_id, resource_group_name, account_name, container_name, legal_hold)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_clear_legal_hold: #{e}"
end
```

#### Using the blob_containers_clear_legal_hold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalHold>, Integer, Hash)> blob_containers_clear_legal_hold_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, legal_hold)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_clear_legal_hold_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, legal_hold)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalHold>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_clear_legal_hold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **container_name** | **String** | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **legal_hold** | [**LegalHold**](LegalHold.md) | The LegalHold property that will be clear from a blob container. |  |

### Return type

[**LegalHold**](LegalHold.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_containers_create

> <BlobContainer> blob_containers_create(api_version, subscription_id, resource_group_name, account_name, container_name, blob_container)



Creates a new container under the specified account as described by request body. The container resource includes metadata and properties for that container. It does not include a list of the blobs contained by the container.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
blob_container = AzureSDK::BlobContainer.new # BlobContainer | Properties of the blob container to create.

begin
  
  result = api_instance.blob_containers_create(api_version, subscription_id, resource_group_name, account_name, container_name, blob_container)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_create: #{e}"
end
```

#### Using the blob_containers_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobContainer>, Integer, Hash)> blob_containers_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, blob_container)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_create_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, blob_container)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobContainer>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **container_name** | **String** | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **blob_container** | [**BlobContainer**](BlobContainer.md) | Properties of the blob container to create. |  |

### Return type

[**BlobContainer**](BlobContainer.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_containers_delete

> blob_containers_delete(api_version, subscription_id, resource_group_name, account_name, container_name)



Deletes specified container under its account.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.

begin
  
  api_instance.blob_containers_delete(api_version, subscription_id, resource_group_name, account_name, container_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_delete: #{e}"
end
```

#### Using the blob_containers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> blob_containers_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **container_name** | **String** | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_containers_get

> <BlobContainer> blob_containers_get(api_version, subscription_id, resource_group_name, account_name, container_name)



Gets properties of a specified container.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.

begin
  
  result = api_instance.blob_containers_get(api_version, subscription_id, resource_group_name, account_name, container_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_get: #{e}"
end
```

#### Using the blob_containers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobContainer>, Integer, Hash)> blob_containers_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobContainer>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **container_name** | **String** | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |

### Return type

[**BlobContainer**](BlobContainer.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_containers_lease

> <LeaseContainerResponse> blob_containers_lease(api_version, subscription_id, resource_group_name, account_name, container_name, opts)



The Lease Container operation establishes and manages a lock on a container for delete operations. The lock duration can be 15 to 60 seconds, or can be infinite.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
opts = {
  parameters: AzureSDK::LeaseContainerRequest.new({action: AzureSDK::LeaseContainerRequestAction::ACQUIRE}) # LeaseContainerRequest | The content of the action request
}

begin
  
  result = api_instance.blob_containers_lease(api_version, subscription_id, resource_group_name, account_name, container_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_lease: #{e}"
end
```

#### Using the blob_containers_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseContainerResponse>, Integer, Hash)> blob_containers_lease_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_lease_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseContainerResponse>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_lease_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **container_name** | **String** | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **parameters** | [**LeaseContainerRequest**](LeaseContainerRequest.md) | The content of the action request | [optional] |

### Return type

[**LeaseContainerResponse**](LeaseContainerResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_containers_object_level_worm

> blob_containers_object_level_worm(api_version, subscription_id, resource_group_name, account_name, container_name)



This operation migrates a blob container from container level WORM to object level immutability enabled container. Prerequisites require a container level immutability policy either in locked or unlocked state, Account level versioning must be enabled and there should be no Legal hold on the container.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.

begin
  
  api_instance.blob_containers_object_level_worm(api_version, subscription_id, resource_group_name, account_name, container_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_object_level_worm: #{e}"
end
```

#### Using the blob_containers_object_level_worm_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> blob_containers_object_level_worm_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_object_level_worm_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_object_level_worm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **container_name** | **String** | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_containers_set_legal_hold

> <LegalHold> blob_containers_set_legal_hold(api_version, subscription_id, resource_group_name, account_name, container_name, legal_hold)



Sets legal hold tags. Setting the same tag results in an idempotent operation. SetLegalHold follows an append pattern and does not clear out the existing tags that are not specified in the request.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
legal_hold = AzureSDK::LegalHold.new({tags: ['tags_example']}) # LegalHold | The LegalHold property that will be set to a blob container.

begin
  
  result = api_instance.blob_containers_set_legal_hold(api_version, subscription_id, resource_group_name, account_name, container_name, legal_hold)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_set_legal_hold: #{e}"
end
```

#### Using the blob_containers_set_legal_hold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalHold>, Integer, Hash)> blob_containers_set_legal_hold_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, legal_hold)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_set_legal_hold_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, legal_hold)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalHold>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_set_legal_hold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **container_name** | **String** | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **legal_hold** | [**LegalHold**](LegalHold.md) | The LegalHold property that will be set to a blob container. |  |

### Return type

[**LegalHold**](LegalHold.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_containers_update

> <BlobContainer> blob_containers_update(api_version, subscription_id, resource_group_name, account_name, container_name, blob_container)



Updates container properties as specified in request body. Properties not mentioned in the request will be unchanged. Update fails if the specified container doesn't already exist.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::BlobContainersApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
blob_container = AzureSDK::BlobContainer.new # BlobContainer | Properties to update for the blob container.

begin
  
  result = api_instance.blob_containers_update(api_version, subscription_id, resource_group_name, account_name, container_name, blob_container)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_update: #{e}"
end
```

#### Using the blob_containers_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobContainer>, Integer, Hash)> blob_containers_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, blob_container)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, blob_container)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobContainer>
rescue AzureSDK::ApiError => e
  puts "Error when calling BlobContainersApi->blob_containers_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **container_name** | **String** | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |  |
| **blob_container** | [**BlobContainer**](BlobContainer.md) | Properties to update for the blob container. |  |

### Return type

[**BlobContainer**](BlobContainer.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


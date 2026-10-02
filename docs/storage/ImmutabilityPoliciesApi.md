# AzureSDK::ImmutabilityPoliciesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**blob_containers_create_or_update_immutability_policy**](ImmutabilityPoliciesApi.md#blob_containers_create_or_update_immutability_policy) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/immutabilityPolicies/default |  |
| [**blob_containers_delete_immutability_policy**](ImmutabilityPoliciesApi.md#blob_containers_delete_immutability_policy) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/immutabilityPolicies/default |  |
| [**blob_containers_extend_immutability_policy**](ImmutabilityPoliciesApi.md#blob_containers_extend_immutability_policy) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/immutabilityPolicies/default/extend |  |
| [**blob_containers_get_immutability_policy**](ImmutabilityPoliciesApi.md#blob_containers_get_immutability_policy) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/immutabilityPolicies/default |  |
| [**blob_containers_lock_immutability_policy**](ImmutabilityPoliciesApi.md#blob_containers_lock_immutability_policy) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/immutabilityPolicies/default/lock |  |


## blob_containers_create_or_update_immutability_policy

> <ImmutabilityPolicy> blob_containers_create_or_update_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, opts)



Creates or updates an unlocked immutability policy. ETag in If-Match is honored if given but not required for this operation.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ImmutabilityPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
opts = {
  if_match: 'if_match_example', # String | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service.
  parameters: AzureSDK::ImmutabilityPolicy.new({properties: AzureSDK::ImmutabilityPolicyProperty.new}) # ImmutabilityPolicy | The ImmutabilityPolicy Properties that will be created or updated to a blob container.
}

begin
  
  result = api_instance.blob_containers_create_or_update_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_create_or_update_immutability_policy: #{e}"
end
```

#### Using the blob_containers_create_or_update_immutability_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImmutabilityPolicy>, Integer, Hash)> blob_containers_create_or_update_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_create_or_update_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImmutabilityPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_create_or_update_immutability_policy_with_http_info: #{e}"
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
| **if_match** | **String** | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service. | [optional] |
| **parameters** | [**ImmutabilityPolicy**](ImmutabilityPolicy.md) | The ImmutabilityPolicy Properties that will be created or updated to a blob container. | [optional] |

### Return type

[**ImmutabilityPolicy**](ImmutabilityPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_containers_delete_immutability_policy

> <ImmutabilityPolicy> blob_containers_delete_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, if_match)



Aborts an unlocked immutability policy. The response of delete has immutabilityPeriodSinceCreationInDays set to 0. ETag in If-Match is required for this operation. Deleting a locked immutability policy is not allowed, the only way is to delete the container after deleting all expired blobs inside the policy locked container.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ImmutabilityPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
if_match = 'if_match_example' # String | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service.

begin
  
  result = api_instance.blob_containers_delete_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, if_match)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_delete_immutability_policy: #{e}"
end
```

#### Using the blob_containers_delete_immutability_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImmutabilityPolicy>, Integer, Hash)> blob_containers_delete_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, if_match)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_delete_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, if_match)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImmutabilityPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_delete_immutability_policy_with_http_info: #{e}"
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
| **if_match** | **String** | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service. |  |

### Return type

[**ImmutabilityPolicy**](ImmutabilityPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_containers_extend_immutability_policy

> <ImmutabilityPolicy> blob_containers_extend_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, if_match, opts)



Extends the immutabilityPeriodSinceCreationInDays of a locked immutabilityPolicy. The only action allowed on a Locked policy will be this action. ETag in If-Match is required for this operation.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ImmutabilityPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
if_match = 'if_match_example' # String | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service.
opts = {
  parameters: AzureSDK::ImmutabilityPolicy.new({properties: AzureSDK::ImmutabilityPolicyProperty.new}) # ImmutabilityPolicy | The content of the action request
}

begin
  
  result = api_instance.blob_containers_extend_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, if_match, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_extend_immutability_policy: #{e}"
end
```

#### Using the blob_containers_extend_immutability_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImmutabilityPolicy>, Integer, Hash)> blob_containers_extend_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, if_match, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_extend_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, if_match, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImmutabilityPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_extend_immutability_policy_with_http_info: #{e}"
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
| **if_match** | **String** | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service. |  |
| **parameters** | [**ImmutabilityPolicy**](ImmutabilityPolicy.md) | The content of the action request | [optional] |

### Return type

[**ImmutabilityPolicy**](ImmutabilityPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blob_containers_get_immutability_policy

> <ImmutabilityPolicy> blob_containers_get_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, opts)



Gets the existing immutability policy along with the corresponding ETag in response headers and body.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ImmutabilityPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
opts = {
  if_match: 'if_match_example' # String | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service.
}

begin
  
  result = api_instance.blob_containers_get_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_get_immutability_policy: #{e}"
end
```

#### Using the blob_containers_get_immutability_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImmutabilityPolicy>, Integer, Hash)> blob_containers_get_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_get_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImmutabilityPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_get_immutability_policy_with_http_info: #{e}"
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
| **if_match** | **String** | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service. | [optional] |

### Return type

[**ImmutabilityPolicy**](ImmutabilityPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blob_containers_lock_immutability_policy

> <ImmutabilityPolicy> blob_containers_lock_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, if_match)



Sets the ImmutabilityPolicy to Locked state. The only action allowed on a Locked policy is ExtendImmutabilityPolicy action. ETag in If-Match is required for this operation.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::ImmutabilityPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
container_name = 'container_name_example' # String | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
if_match = 'if_match_example' # String | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service.

begin
  
  result = api_instance.blob_containers_lock_immutability_policy(api_version, subscription_id, resource_group_name, account_name, container_name, if_match)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_lock_immutability_policy: #{e}"
end
```

#### Using the blob_containers_lock_immutability_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImmutabilityPolicy>, Integer, Hash)> blob_containers_lock_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, if_match)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_containers_lock_immutability_policy_with_http_info(api_version, subscription_id, resource_group_name, account_name, container_name, if_match)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImmutabilityPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling ImmutabilityPoliciesApi->blob_containers_lock_immutability_policy_with_http_info: #{e}"
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
| **if_match** | **String** | The entity state (ETag) version of the immutability policy to update must be returned to the server for all update operations. The ETag value must include the leading and trailing double quotes as returned by the service. |  |

### Return type

[**ImmutabilityPolicy**](ImmutabilityPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# AzureRest::SshPublicKeysApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ssh_public_keys_create**](SshPublicKeysApi.md#ssh_public_keys_create) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/sshPublicKeys/{sshPublicKeyName} |  |
| [**ssh_public_keys_delete**](SshPublicKeysApi.md#ssh_public_keys_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/sshPublicKeys/{sshPublicKeyName} |  |
| [**ssh_public_keys_generate_key_pair**](SshPublicKeysApi.md#ssh_public_keys_generate_key_pair) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/sshPublicKeys/{sshPublicKeyName}/generateKeyPair |  |
| [**ssh_public_keys_get**](SshPublicKeysApi.md#ssh_public_keys_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/sshPublicKeys/{sshPublicKeyName} |  |
| [**ssh_public_keys_list_by_resource_group**](SshPublicKeysApi.md#ssh_public_keys_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/sshPublicKeys |  |
| [**ssh_public_keys_list_by_subscription**](SshPublicKeysApi.md#ssh_public_keys_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/sshPublicKeys |  |
| [**ssh_public_keys_update**](SshPublicKeysApi.md#ssh_public_keys_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/sshPublicKeys/{sshPublicKeyName} |  |


## ssh_public_keys_create

> <SshPublicKeyResource> ssh_public_keys_create(api_version, subscription_id, resource_group_name, ssh_public_key_name, parameters)



Creates a new SSH public key resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SshPublicKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ssh_public_key_name = 'ssh_public_key_name_example' # String | The name of the SSH public key.
parameters = AzureRest::SshPublicKeyResource.new({location: 'location_example'}) # SshPublicKeyResource | Parameters supplied to create the SSH public key.

begin
  
  result = api_instance.ssh_public_keys_create(api_version, subscription_id, resource_group_name, ssh_public_key_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_create: #{e}"
end
```

#### Using the ssh_public_keys_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshPublicKeyResource>, Integer, Hash)> ssh_public_keys_create_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ssh_public_keys_create_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshPublicKeyResource>
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ssh_public_key_name** | **String** | The name of the SSH public key. |  |
| **parameters** | [**SshPublicKeyResource**](SshPublicKeyResource.md) | Parameters supplied to create the SSH public key. |  |

### Return type

[**SshPublicKeyResource**](SshPublicKeyResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ssh_public_keys_delete

> ssh_public_keys_delete(api_version, subscription_id, resource_group_name, ssh_public_key_name)



Delete an SSH public key.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SshPublicKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ssh_public_key_name = 'ssh_public_key_name_example' # String | The name of the SSH public key.

begin
  
  api_instance.ssh_public_keys_delete(api_version, subscription_id, resource_group_name, ssh_public_key_name)
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_delete: #{e}"
end
```

#### Using the ssh_public_keys_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ssh_public_keys_delete_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ssh_public_keys_delete_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ssh_public_key_name** | **String** | The name of the SSH public key. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ssh_public_keys_generate_key_pair

> <SshPublicKeyGenerateKeyPairResult> ssh_public_keys_generate_key_pair(api_version, subscription_id, resource_group_name, ssh_public_key_name, opts)



Generates and returns a public/private key pair and populates the SSH public key resource with the public key. The length of the key will be 3072 bits. This operation can only be performed once per SSH public key resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SshPublicKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ssh_public_key_name = 'ssh_public_key_name_example' # String | The name of the SSH public key.
opts = {
  parameters: AzureRest::SshGenerateKeyPairInputParameters.new # SshGenerateKeyPairInputParameters | Parameters supplied to generate the SSH public key.
}

begin
  
  result = api_instance.ssh_public_keys_generate_key_pair(api_version, subscription_id, resource_group_name, ssh_public_key_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_generate_key_pair: #{e}"
end
```

#### Using the ssh_public_keys_generate_key_pair_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshPublicKeyGenerateKeyPairResult>, Integer, Hash)> ssh_public_keys_generate_key_pair_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.ssh_public_keys_generate_key_pair_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshPublicKeyGenerateKeyPairResult>
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_generate_key_pair_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ssh_public_key_name** | **String** | The name of the SSH public key. |  |
| **parameters** | [**SshGenerateKeyPairInputParameters**](SshGenerateKeyPairInputParameters.md) | Parameters supplied to generate the SSH public key. | [optional] |

### Return type

[**SshPublicKeyGenerateKeyPairResult**](SshPublicKeyGenerateKeyPairResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ssh_public_keys_get

> <SshPublicKeyResource> ssh_public_keys_get(api_version, subscription_id, resource_group_name, ssh_public_key_name)



Retrieves information about an SSH public key.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SshPublicKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ssh_public_key_name = 'ssh_public_key_name_example' # String | The name of the SSH public key.

begin
  
  result = api_instance.ssh_public_keys_get(api_version, subscription_id, resource_group_name, ssh_public_key_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_get: #{e}"
end
```

#### Using the ssh_public_keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshPublicKeyResource>, Integer, Hash)> ssh_public_keys_get_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ssh_public_keys_get_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshPublicKeyResource>
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ssh_public_key_name** | **String** | The name of the SSH public key. |  |

### Return type

[**SshPublicKeyResource**](SshPublicKeyResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ssh_public_keys_list_by_resource_group

> <SshPublicKeysGroupListResult> ssh_public_keys_list_by_resource_group(api_version, subscription_id, resource_group_name)



Lists all of the SSH public keys in the specified resource group. Use the nextLink property in the response to get the next page of SSH public keys.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SshPublicKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.ssh_public_keys_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_list_by_resource_group: #{e}"
end
```

#### Using the ssh_public_keys_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshPublicKeysGroupListResult>, Integer, Hash)> ssh_public_keys_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ssh_public_keys_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshPublicKeysGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**SshPublicKeysGroupListResult**](SshPublicKeysGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ssh_public_keys_list_by_subscription

> <SshPublicKeysGroupListResult> ssh_public_keys_list_by_subscription(api_version, subscription_id)



Lists all of the SSH public keys in the subscription. Use the nextLink property in the response to get the next page of SSH public keys.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SshPublicKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.ssh_public_keys_list_by_subscription(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_list_by_subscription: #{e}"
end
```

#### Using the ssh_public_keys_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshPublicKeysGroupListResult>, Integer, Hash)> ssh_public_keys_list_by_subscription_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.ssh_public_keys_list_by_subscription_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshPublicKeysGroupListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**SshPublicKeysGroupListResult**](SshPublicKeysGroupListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ssh_public_keys_update

> <SshPublicKeyResource> ssh_public_keys_update(api_version, subscription_id, resource_group_name, ssh_public_key_name, parameters)



Updates a new SSH public key resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SshPublicKeysApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ssh_public_key_name = 'ssh_public_key_name_example' # String | The name of the SSH public key.
parameters = AzureRest::SshPublicKeyUpdateResource.new # SshPublicKeyUpdateResource | Parameters supplied to update the SSH public key.

begin
  
  result = api_instance.ssh_public_keys_update(api_version, subscription_id, resource_group_name, ssh_public_key_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_update: #{e}"
end
```

#### Using the ssh_public_keys_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshPublicKeyResource>, Integer, Hash)> ssh_public_keys_update_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ssh_public_keys_update_with_http_info(api_version, subscription_id, resource_group_name, ssh_public_key_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshPublicKeyResource>
rescue AzureRest::ApiError => e
  puts "Error when calling SshPublicKeysApi->ssh_public_keys_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ssh_public_key_name** | **String** | The name of the SSH public key. |  |
| **parameters** | [**SshPublicKeyUpdateResource**](SshPublicKeyUpdateResource.md) | Parameters supplied to update the SSH public key. |  |

### Return type

[**SshPublicKeyResource**](SshPublicKeyResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


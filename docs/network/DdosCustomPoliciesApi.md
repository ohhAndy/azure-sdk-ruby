# AzureSDK::DdosCustomPoliciesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ddos_custom_policies_create_or_update**](DdosCustomPoliciesApi.md#ddos_custom_policies_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosCustomPolicies/{ddosCustomPolicyName} |  |
| [**ddos_custom_policies_delete**](DdosCustomPoliciesApi.md#ddos_custom_policies_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosCustomPolicies/{ddosCustomPolicyName} |  |
| [**ddos_custom_policies_get**](DdosCustomPoliciesApi.md#ddos_custom_policies_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosCustomPolicies/{ddosCustomPolicyName} |  |
| [**ddos_custom_policies_list**](DdosCustomPoliciesApi.md#ddos_custom_policies_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosCustomPolicies |  |
| [**ddos_custom_policies_list_all**](DdosCustomPoliciesApi.md#ddos_custom_policies_list_all) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/ddosCustomPolicies |  |
| [**ddos_custom_policies_update_tags**](DdosCustomPoliciesApi.md#ddos_custom_policies_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosCustomPolicies/{ddosCustomPolicyName} |  |


## ddos_custom_policies_create_or_update

> <DdosCustomPolicy> ddos_custom_policies_create_or_update(api_version, subscription_id, resource_group_name, ddos_custom_policy_name, parameters)



Creates or updates a DDoS custom policy.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosCustomPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ddos_custom_policy_name = 'ddos_custom_policy_name_example' # String | The name of the DDoS custom policy.
parameters = AzureSDK::DdosCustomPolicy.new # DdosCustomPolicy | Parameters supplied to the create or update operation.

begin
  
  result = api_instance.ddos_custom_policies_create_or_update(api_version, subscription_id, resource_group_name, ddos_custom_policy_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_create_or_update: #{e}"
end
```

#### Using the ddos_custom_policies_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosCustomPolicy>, Integer, Hash)> ddos_custom_policies_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, ddos_custom_policy_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_custom_policies_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, ddos_custom_policy_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosCustomPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ddos_custom_policy_name** | **String** | The name of the DDoS custom policy. |  |
| **parameters** | [**DdosCustomPolicy**](DdosCustomPolicy.md) | Parameters supplied to the create or update operation. |  |

### Return type

[**DdosCustomPolicy**](DdosCustomPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ddos_custom_policies_delete

> ddos_custom_policies_delete(api_version, subscription_id, resource_group_name, ddos_custom_policy_name)



Deletes the specified DDoS custom policy.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosCustomPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ddos_custom_policy_name = 'ddos_custom_policy_name_example' # String | The name of the DDoS custom policy.

begin
  
  api_instance.ddos_custom_policies_delete(api_version, subscription_id, resource_group_name, ddos_custom_policy_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_delete: #{e}"
end
```

#### Using the ddos_custom_policies_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ddos_custom_policies_delete_with_http_info(api_version, subscription_id, resource_group_name, ddos_custom_policy_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_custom_policies_delete_with_http_info(api_version, subscription_id, resource_group_name, ddos_custom_policy_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ddos_custom_policy_name** | **String** | The name of the DDoS custom policy. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ddos_custom_policies_get

> <DdosCustomPolicy> ddos_custom_policies_get(api_version, subscription_id, resource_group_name, ddos_custom_policy_name)



Gets information about the specified DDoS custom policy.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosCustomPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ddos_custom_policy_name = 'ddos_custom_policy_name_example' # String | The name of the DDoS custom policy.

begin
  
  result = api_instance.ddos_custom_policies_get(api_version, subscription_id, resource_group_name, ddos_custom_policy_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_get: #{e}"
end
```

#### Using the ddos_custom_policies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosCustomPolicy>, Integer, Hash)> ddos_custom_policies_get_with_http_info(api_version, subscription_id, resource_group_name, ddos_custom_policy_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_custom_policies_get_with_http_info(api_version, subscription_id, resource_group_name, ddos_custom_policy_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosCustomPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ddos_custom_policy_name** | **String** | The name of the DDoS custom policy. |  |

### Return type

[**DdosCustomPolicy**](DdosCustomPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ddos_custom_policies_list

> <DdosCustomPolicyListResult> ddos_custom_policies_list(api_version, subscription_id, resource_group_name)



Gets all the DDoS custom policies in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosCustomPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.ddos_custom_policies_list(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_list: #{e}"
end
```

#### Using the ddos_custom_policies_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosCustomPolicyListResult>, Integer, Hash)> ddos_custom_policies_list_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_custom_policies_list_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosCustomPolicyListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**DdosCustomPolicyListResult**](DdosCustomPolicyListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ddos_custom_policies_list_all

> <DdosCustomPolicyListResult> ddos_custom_policies_list_all(api_version, subscription_id)



Gets all the DDoS custom policies in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosCustomPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.ddos_custom_policies_list_all(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_list_all: #{e}"
end
```

#### Using the ddos_custom_policies_list_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosCustomPolicyListResult>, Integer, Hash)> ddos_custom_policies_list_all_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_custom_policies_list_all_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosCustomPolicyListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_list_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**DdosCustomPolicyListResult**](DdosCustomPolicyListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ddos_custom_policies_update_tags

> <DdosCustomPolicy> ddos_custom_policies_update_tags(api_version, subscription_id, resource_group_name, ddos_custom_policy_name, parameters)



Update a DDoS custom policy tags.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosCustomPoliciesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ddos_custom_policy_name = 'ddos_custom_policy_name_example' # String | The name of the DDoS custom policy.
parameters = AzureSDK::TagsObject.new # TagsObject | Parameters supplied to update DDoS custom policy resource tags.

begin
  
  result = api_instance.ddos_custom_policies_update_tags(api_version, subscription_id, resource_group_name, ddos_custom_policy_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_update_tags: #{e}"
end
```

#### Using the ddos_custom_policies_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosCustomPolicy>, Integer, Hash)> ddos_custom_policies_update_tags_with_http_info(api_version, subscription_id, resource_group_name, ddos_custom_policy_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_custom_policies_update_tags_with_http_info(api_version, subscription_id, resource_group_name, ddos_custom_policy_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosCustomPolicy>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosCustomPoliciesApi->ddos_custom_policies_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ddos_custom_policy_name** | **String** | The name of the DDoS custom policy. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to update DDoS custom policy resource tags. |  |

### Return type

[**DdosCustomPolicy**](DdosCustomPolicy.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


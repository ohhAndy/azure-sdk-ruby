# AzureRest::AdvancedPlatformMetricsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**advanced_platform_metrics_create_or_update**](AdvancedPlatformMetricsApi.md#advanced_platform_metrics_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/advancedPlatformMetrics/{advancedPlatformMetricsRuleType} |  |
| [**advanced_platform_metrics_delete**](AdvancedPlatformMetricsApi.md#advanced_platform_metrics_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/advancedPlatformMetrics/{advancedPlatformMetricsRuleType} |  |
| [**advanced_platform_metrics_get**](AdvancedPlatformMetricsApi.md#advanced_platform_metrics_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/advancedPlatformMetrics/{advancedPlatformMetricsRuleType} |  |
| [**advanced_platform_metrics_list**](AdvancedPlatformMetricsApi.md#advanced_platform_metrics_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/advancedPlatformMetrics |  |


## advanced_platform_metrics_create_or_update

> <AdvancedPlatformMetricsRule> advanced_platform_metrics_create_or_update(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type, resource)



Create or update the advanced platform metrics rule for the storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AdvancedPlatformMetricsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
advanced_platform_metrics_rule_type = 'ContainerLevelCapacityMetrics' # String | The type of the advanced platform metrics rule.
resource = AzureRest::AdvancedPlatformMetricsRule.new # AdvancedPlatformMetricsRule | Resource create parameters.

begin
  
  result = api_instance.advanced_platform_metrics_create_or_update(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type, resource)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling AdvancedPlatformMetricsApi->advanced_platform_metrics_create_or_update: #{e}"
end
```

#### Using the advanced_platform_metrics_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedPlatformMetricsRule>, Integer, Hash)> advanced_platform_metrics_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type, resource)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_platform_metrics_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type, resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedPlatformMetricsRule>
rescue AzureRest::ApiError => e
  puts "Error when calling AdvancedPlatformMetricsApi->advanced_platform_metrics_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **advanced_platform_metrics_rule_type** | **String** | The type of the advanced platform metrics rule. |  |
| **resource** | [**AdvancedPlatformMetricsRule**](AdvancedPlatformMetricsRule.md) | Resource create parameters. |  |

### Return type

[**AdvancedPlatformMetricsRule**](AdvancedPlatformMetricsRule.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## advanced_platform_metrics_delete

> advanced_platform_metrics_delete(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type)



Delete the advanced platform metrics rule for the storage account by rule type.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AdvancedPlatformMetricsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
advanced_platform_metrics_rule_type = 'ContainerLevelCapacityMetrics' # String | The type of the advanced platform metrics rule.

begin
  
  api_instance.advanced_platform_metrics_delete(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type)
rescue AzureRest::ApiError => e
  puts "Error when calling AdvancedPlatformMetricsApi->advanced_platform_metrics_delete: #{e}"
end
```

#### Using the advanced_platform_metrics_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> advanced_platform_metrics_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_platform_metrics_delete_with_http_info(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling AdvancedPlatformMetricsApi->advanced_platform_metrics_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **advanced_platform_metrics_rule_type** | **String** | The type of the advanced platform metrics rule. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## advanced_platform_metrics_get

> <AdvancedPlatformMetricsRule> advanced_platform_metrics_get(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type)



Get the advanced platform metrics rule for the storage account by rule type.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AdvancedPlatformMetricsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
advanced_platform_metrics_rule_type = 'ContainerLevelCapacityMetrics' # String | The type of the advanced platform metrics rule.

begin
  
  result = api_instance.advanced_platform_metrics_get(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling AdvancedPlatformMetricsApi->advanced_platform_metrics_get: #{e}"
end
```

#### Using the advanced_platform_metrics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedPlatformMetricsRule>, Integer, Hash)> advanced_platform_metrics_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_platform_metrics_get_with_http_info(api_version, subscription_id, resource_group_name, account_name, advanced_platform_metrics_rule_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedPlatformMetricsRule>
rescue AzureRest::ApiError => e
  puts "Error when calling AdvancedPlatformMetricsApi->advanced_platform_metrics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **advanced_platform_metrics_rule_type** | **String** | The type of the advanced platform metrics rule. |  |

### Return type

[**AdvancedPlatformMetricsRule**](AdvancedPlatformMetricsRule.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## advanced_platform_metrics_list

> <AdvancedPlatformMetricsRuleListResult> advanced_platform_metrics_list(api_version, subscription_id, resource_group_name, account_name)



List the advanced platform metrics rules associated with the storage account.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::AdvancedPlatformMetricsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.

begin
  
  result = api_instance.advanced_platform_metrics_list(api_version, subscription_id, resource_group_name, account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling AdvancedPlatformMetricsApi->advanced_platform_metrics_list: #{e}"
end
```

#### Using the advanced_platform_metrics_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdvancedPlatformMetricsRuleListResult>, Integer, Hash)> advanced_platform_metrics_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.advanced_platform_metrics_list_with_http_info(api_version, subscription_id, resource_group_name, account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdvancedPlatformMetricsRuleListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling AdvancedPlatformMetricsApi->advanced_platform_metrics_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |

### Return type

[**AdvancedPlatformMetricsRuleListResult**](AdvancedPlatformMetricsRuleListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# AzureRest::ScheduledQueryRulesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**scheduled_query_rules_create_or_update**](ScheduledQueryRulesApi.md#scheduled_query_rules_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/scheduledQueryRules/{ruleName} |  |
| [**scheduled_query_rules_delete**](ScheduledQueryRulesApi.md#scheduled_query_rules_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/scheduledQueryRules/{ruleName} |  |
| [**scheduled_query_rules_get**](ScheduledQueryRulesApi.md#scheduled_query_rules_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/scheduledQueryRules/{ruleName} |  |
| [**scheduled_query_rules_list_by_resource_group**](ScheduledQueryRulesApi.md#scheduled_query_rules_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/scheduledQueryRules |  |
| [**scheduled_query_rules_list_by_subscription**](ScheduledQueryRulesApi.md#scheduled_query_rules_list_by_subscription) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Insights/scheduledQueryRules |  |
| [**scheduled_query_rules_update**](ScheduledQueryRulesApi.md#scheduled_query_rules_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/scheduledQueryRules/{ruleName} |  |


## scheduled_query_rules_create_or_update

> <ScheduledQueryRuleResource> scheduled_query_rules_create_or_update(subscription_id, resource_group_name, rule_name, api_version, parameters)



Creates or updates a scheduled query rule.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ScheduledQueryRulesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
rule_name = 'rule_name_example' # String | The name of the rule.
api_version = 'api_version_example' # String | The API version to use for this operation.
parameters = AzureRest::ScheduledQueryRuleResource.new({location: 'location_example', properties: AzureRest::ScheduledQueryRuleProperties.new}) # ScheduledQueryRuleResource | The parameters of the rule to create or update.

begin
  
  result = api_instance.scheduled_query_rules_create_or_update(subscription_id, resource_group_name, rule_name, api_version, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_create_or_update: #{e}"
end
```

#### Using the scheduled_query_rules_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledQueryRuleResource>, Integer, Hash)> scheduled_query_rules_create_or_update_with_http_info(subscription_id, resource_group_name, rule_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.scheduled_query_rules_create_or_update_with_http_info(subscription_id, resource_group_name, rule_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledQueryRuleResource>
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **rule_name** | **String** | The name of the rule. |  |
| **api_version** | **String** | The API version to use for this operation. |  |
| **parameters** | [**ScheduledQueryRuleResource**](ScheduledQueryRuleResource.md) | The parameters of the rule to create or update. |  |

### Return type

[**ScheduledQueryRuleResource**](ScheduledQueryRuleResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## scheduled_query_rules_delete

> scheduled_query_rules_delete(subscription_id, resource_group_name, rule_name, api_version)



Deletes a scheduled query rule.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ScheduledQueryRulesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
rule_name = 'rule_name_example' # String | The name of the rule.
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  api_instance.scheduled_query_rules_delete(subscription_id, resource_group_name, rule_name, api_version)
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_delete: #{e}"
end
```

#### Using the scheduled_query_rules_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> scheduled_query_rules_delete_with_http_info(subscription_id, resource_group_name, rule_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.scheduled_query_rules_delete_with_http_info(subscription_id, resource_group_name, rule_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **rule_name** | **String** | The name of the rule. |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scheduled_query_rules_get

> <ScheduledQueryRuleResource> scheduled_query_rules_get(subscription_id, resource_group_name, rule_name, api_version)



Retrieve an scheduled query rule definition.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ScheduledQueryRulesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
rule_name = 'rule_name_example' # String | The name of the rule.
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  result = api_instance.scheduled_query_rules_get(subscription_id, resource_group_name, rule_name, api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_get: #{e}"
end
```

#### Using the scheduled_query_rules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledQueryRuleResource>, Integer, Hash)> scheduled_query_rules_get_with_http_info(subscription_id, resource_group_name, rule_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.scheduled_query_rules_get_with_http_info(subscription_id, resource_group_name, rule_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledQueryRuleResource>
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **rule_name** | **String** | The name of the rule. |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

[**ScheduledQueryRuleResource**](ScheduledQueryRuleResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scheduled_query_rules_list_by_resource_group

> <ScheduledQueryRuleResourceCollection> scheduled_query_rules_list_by_resource_group(subscription_id, resource_group_name, api_version)



Retrieve scheduled query rule definitions in a resource group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ScheduledQueryRulesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  result = api_instance.scheduled_query_rules_list_by_resource_group(subscription_id, resource_group_name, api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_list_by_resource_group: #{e}"
end
```

#### Using the scheduled_query_rules_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledQueryRuleResourceCollection>, Integer, Hash)> scheduled_query_rules_list_by_resource_group_with_http_info(subscription_id, resource_group_name, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.scheduled_query_rules_list_by_resource_group_with_http_info(subscription_id, resource_group_name, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledQueryRuleResourceCollection>
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

[**ScheduledQueryRuleResourceCollection**](ScheduledQueryRuleResourceCollection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scheduled_query_rules_list_by_subscription

> <ScheduledQueryRuleResourceCollection> scheduled_query_rules_list_by_subscription(subscription_id, api_version)



Retrieve a scheduled query rule definitions in a subscription.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ScheduledQueryRulesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  result = api_instance.scheduled_query_rules_list_by_subscription(subscription_id, api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_list_by_subscription: #{e}"
end
```

#### Using the scheduled_query_rules_list_by_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledQueryRuleResourceCollection>, Integer, Hash)> scheduled_query_rules_list_by_subscription_with_http_info(subscription_id, api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.scheduled_query_rules_list_by_subscription_with_http_info(subscription_id, api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledQueryRuleResourceCollection>
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_list_by_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

[**ScheduledQueryRuleResourceCollection**](ScheduledQueryRuleResourceCollection.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scheduled_query_rules_update

> <ScheduledQueryRuleResource> scheduled_query_rules_update(subscription_id, resource_group_name, rule_name, api_version, parameters)



Update a scheduled query rule.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ScheduledQueryRulesApi.new
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
rule_name = 'rule_name_example' # String | The name of the rule.
api_version = 'api_version_example' # String | The API version to use for this operation.
parameters = AzureRest::ScheduledQueryRuleResourcePatch.new # ScheduledQueryRuleResourcePatch | The parameters of the rule to update.

begin
  
  result = api_instance.scheduled_query_rules_update(subscription_id, resource_group_name, rule_name, api_version, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_update: #{e}"
end
```

#### Using the scheduled_query_rules_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledQueryRuleResource>, Integer, Hash)> scheduled_query_rules_update_with_http_info(subscription_id, resource_group_name, rule_name, api_version, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.scheduled_query_rules_update_with_http_info(subscription_id, resource_group_name, rule_name, api_version, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledQueryRuleResource>
rescue AzureRest::ApiError => e
  puts "Error when calling ScheduledQueryRulesApi->scheduled_query_rules_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **rule_name** | **String** | The name of the rule. |  |
| **api_version** | **String** | The API version to use for this operation. |  |
| **parameters** | [**ScheduledQueryRuleResourcePatch**](ScheduledQueryRuleResourcePatch.md) | The parameters of the rule to update. |  |

### Return type

[**ScheduledQueryRuleResource**](ScheduledQueryRuleResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


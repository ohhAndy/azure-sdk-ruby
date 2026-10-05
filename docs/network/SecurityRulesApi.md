# AzureRest::SecurityRulesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**default_security_rules_get**](SecurityRulesApi.md#default_security_rules_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}/defaultSecurityRules/{defaultSecurityRuleName} |  |
| [**default_security_rules_list**](SecurityRulesApi.md#default_security_rules_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}/defaultSecurityRules |  |
| [**security_rules_create_or_update**](SecurityRulesApi.md#security_rules_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}/securityRules/{securityRuleName} |  |
| [**security_rules_delete**](SecurityRulesApi.md#security_rules_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}/securityRules/{securityRuleName} |  |
| [**security_rules_get**](SecurityRulesApi.md#security_rules_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}/securityRules/{securityRuleName} |  |
| [**security_rules_list**](SecurityRulesApi.md#security_rules_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}/securityRules |  |


## default_security_rules_get

> <SecurityRule> default_security_rules_get(api_version, subscription_id, resource_group_name, network_security_group_name, default_security_rule_name)



Get the specified default network security rule.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.
default_security_rule_name = 'default_security_rule_name_example' # String | The name of the default security rule.

begin
  
  result = api_instance.default_security_rules_get(api_version, subscription_id, resource_group_name, network_security_group_name, default_security_rule_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->default_security_rules_get: #{e}"
end
```

#### Using the default_security_rules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityRule>, Integer, Hash)> default_security_rules_get_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, default_security_rule_name)

```ruby
begin
  
  data, status_code, headers = api_instance.default_security_rules_get_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, default_security_rule_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityRule>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->default_security_rules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |
| **default_security_rule_name** | **String** | The name of the default security rule. |  |

### Return type

[**SecurityRule**](SecurityRule.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## default_security_rules_list

> <SecurityRuleListResult> default_security_rules_list(api_version, subscription_id, resource_group_name, network_security_group_name)



Gets all default security rules in a network security group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.

begin
  
  result = api_instance.default_security_rules_list(api_version, subscription_id, resource_group_name, network_security_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->default_security_rules_list: #{e}"
end
```

#### Using the default_security_rules_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityRuleListResult>, Integer, Hash)> default_security_rules_list_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.default_security_rules_list_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityRuleListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->default_security_rules_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |

### Return type

[**SecurityRuleListResult**](SecurityRuleListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_rules_create_or_update

> <SecurityRule> security_rules_create_or_update(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name, security_rule_parameters)



Creates or updates a security rule in the specified network security group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.
security_rule_name = 'security_rule_name_example' # String | The name of the security rule.
security_rule_parameters = AzureRest::SecurityRule.new # SecurityRule | Parameters supplied to the create or update network security rule operation.

begin
  
  result = api_instance.security_rules_create_or_update(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name, security_rule_parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->security_rules_create_or_update: #{e}"
end
```

#### Using the security_rules_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityRule>, Integer, Hash)> security_rules_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name, security_rule_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.security_rules_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name, security_rule_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityRule>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->security_rules_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |
| **security_rule_name** | **String** | The name of the security rule. |  |
| **security_rule_parameters** | [**SecurityRule**](SecurityRule.md) | Parameters supplied to the create or update network security rule operation. |  |

### Return type

[**SecurityRule**](SecurityRule.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## security_rules_delete

> security_rules_delete(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name)



Deletes the specified network security rule.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.
security_rule_name = 'security_rule_name_example' # String | The name of the security rule.

begin
  
  api_instance.security_rules_delete(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name)
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->security_rules_delete: #{e}"
end
```

#### Using the security_rules_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> security_rules_delete_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name)

```ruby
begin
  
  data, status_code, headers = api_instance.security_rules_delete_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->security_rules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |
| **security_rule_name** | **String** | The name of the security rule. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_rules_get

> <SecurityRule> security_rules_get(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name)



Get the specified network security rule.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.
security_rule_name = 'security_rule_name_example' # String | The name of the security rule.

begin
  
  result = api_instance.security_rules_get(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->security_rules_get: #{e}"
end
```

#### Using the security_rules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityRule>, Integer, Hash)> security_rules_get_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name)

```ruby
begin
  
  data, status_code, headers = api_instance.security_rules_get_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name, security_rule_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityRule>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->security_rules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |
| **security_rule_name** | **String** | The name of the security rule. |  |

### Return type

[**SecurityRule**](SecurityRule.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_rules_list

> <SecurityRuleListResult> security_rules_list(api_version, subscription_id, resource_group_name, network_security_group_name)



Gets all security rules in a network security group.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::SecurityRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_security_group_name = 'network_security_group_name_example' # String | The name of the network security group.

begin
  
  result = api_instance.security_rules_list(api_version, subscription_id, resource_group_name, network_security_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->security_rules_list: #{e}"
end
```

#### Using the security_rules_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityRuleListResult>, Integer, Hash)> security_rules_list_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.security_rules_list_with_http_info(api_version, subscription_id, resource_group_name, network_security_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityRuleListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling SecurityRulesApi->security_rules_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_security_group_name** | **String** | The name of the network security group. |  |

### Return type

[**SecurityRuleListResult**](SecurityRuleListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


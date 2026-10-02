# AzureSDK::FirewallRulesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**firewall_rules_create_or_update**](FirewallRulesApi.md#firewall_rules_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/firewallRules/{firewallRuleName} |  |
| [**firewall_rules_delete**](FirewallRulesApi.md#firewall_rules_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/firewallRules/{firewallRuleName} |  |
| [**firewall_rules_get**](FirewallRulesApi.md#firewall_rules_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/firewallRules/{firewallRuleName} |  |
| [**firewall_rules_list_by_server**](FirewallRulesApi.md#firewall_rules_list_by_server) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}/firewallRules |  |


## firewall_rules_create_or_update

> <FirewallRule> firewall_rules_create_or_update(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name, parameters)



Creates a new firewall rule or updates an existing firewall rule.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FirewallRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
firewall_rule_name = 'firewall_rule_name_example' # String | The name of the server firewall rule.
parameters = AzureSDK::FirewallRule.new({properties: AzureSDK::FirewallRuleProperties.new({start_ip_address: 'start_ip_address_example', end_ip_address: 'end_ip_address_example'})}) # FirewallRule | The required parameters for creating or updating a firewall rule.

begin
  
  result = api_instance.firewall_rules_create_or_update(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FirewallRulesApi->firewall_rules_create_or_update: #{e}"
end
```

#### Using the firewall_rules_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRule>, Integer, Hash)> firewall_rules_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.firewall_rules_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue AzureSDK::ApiError => e
  puts "Error when calling FirewallRulesApi->firewall_rules_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **firewall_rule_name** | **String** | The name of the server firewall rule. |  |
| **parameters** | [**FirewallRule**](FirewallRule.md) | The required parameters for creating or updating a firewall rule. |  |

### Return type

[**FirewallRule**](FirewallRule.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## firewall_rules_delete

> firewall_rules_delete(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name)



Deletes a firewall rule.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FirewallRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
firewall_rule_name = 'firewall_rule_name_example' # String | The name of the server firewall rule.

begin
  
  api_instance.firewall_rules_delete(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling FirewallRulesApi->firewall_rules_delete: #{e}"
end
```

#### Using the firewall_rules_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> firewall_rules_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name)

```ruby
begin
  
  data, status_code, headers = api_instance.firewall_rules_delete_with_http_info(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling FirewallRulesApi->firewall_rules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **firewall_rule_name** | **String** | The name of the server firewall rule. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## firewall_rules_get

> <FirewallRule> firewall_rules_get(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name)



Gets information about a server firewall rule.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FirewallRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.
firewall_rule_name = 'firewall_rule_name_example' # String | The name of the server firewall rule.

begin
  
  result = api_instance.firewall_rules_get(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FirewallRulesApi->firewall_rules_get: #{e}"
end
```

#### Using the firewall_rules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRule>, Integer, Hash)> firewall_rules_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name)

```ruby
begin
  
  data, status_code, headers = api_instance.firewall_rules_get_with_http_info(api_version, subscription_id, resource_group_name, server_name, firewall_rule_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue AzureSDK::ApiError => e
  puts "Error when calling FirewallRulesApi->firewall_rules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |
| **firewall_rule_name** | **String** | The name of the server firewall rule. |  |

### Return type

[**FirewallRule**](FirewallRule.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## firewall_rules_list_by_server

> <FirewallRuleListResult> firewall_rules_list_by_server(api_version, subscription_id, resource_group_name, server_name)



List all the firewall rules in a given server.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::FirewallRulesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
server_name = 'server_name_example' # String | The name of the server.

begin
  
  result = api_instance.firewall_rules_list_by_server(api_version, subscription_id, resource_group_name, server_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling FirewallRulesApi->firewall_rules_list_by_server: #{e}"
end
```

#### Using the firewall_rules_list_by_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRuleListResult>, Integer, Hash)> firewall_rules_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)

```ruby
begin
  
  data, status_code, headers = api_instance.firewall_rules_list_by_server_with_http_info(api_version, subscription_id, resource_group_name, server_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRuleListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling FirewallRulesApi->firewall_rules_list_by_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **server_name** | **String** | The name of the server. |  |

### Return type

[**FirewallRuleListResult**](FirewallRuleListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


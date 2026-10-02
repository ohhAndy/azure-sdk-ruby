# AzureSDK::DdosProtectionPlansApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ddos_protection_plans_create_or_update**](DdosProtectionPlansApi.md#ddos_protection_plans_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosProtectionPlans/{ddosProtectionPlanName} |  |
| [**ddos_protection_plans_delete**](DdosProtectionPlansApi.md#ddos_protection_plans_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosProtectionPlans/{ddosProtectionPlanName} |  |
| [**ddos_protection_plans_get**](DdosProtectionPlansApi.md#ddos_protection_plans_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosProtectionPlans/{ddosProtectionPlanName} |  |
| [**ddos_protection_plans_list**](DdosProtectionPlansApi.md#ddos_protection_plans_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/ddosProtectionPlans |  |
| [**ddos_protection_plans_list_by_resource_group**](DdosProtectionPlansApi.md#ddos_protection_plans_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosProtectionPlans |  |
| [**ddos_protection_plans_update_tags**](DdosProtectionPlansApi.md#ddos_protection_plans_update_tags) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosProtectionPlans/{ddosProtectionPlanName} |  |


## ddos_protection_plans_create_or_update

> <DdosProtectionPlan> ddos_protection_plans_create_or_update(api_version, subscription_id, resource_group_name, ddos_protection_plan_name, parameters)



Creates or updates a DDoS protection plan.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosProtectionPlansApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ddos_protection_plan_name = 'ddos_protection_plan_name_example' # String | The name of the DDoS protection plan.
parameters = AzureSDK::DdosProtectionPlan.new # DdosProtectionPlan | Parameters supplied to the create or update operation.

begin
  
  result = api_instance.ddos_protection_plans_create_or_update(api_version, subscription_id, resource_group_name, ddos_protection_plan_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_create_or_update: #{e}"
end
```

#### Using the ddos_protection_plans_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosProtectionPlan>, Integer, Hash)> ddos_protection_plans_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, ddos_protection_plan_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_protection_plans_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, ddos_protection_plan_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosProtectionPlan>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ddos_protection_plan_name** | **String** | The name of the DDoS protection plan. |  |
| **parameters** | [**DdosProtectionPlan**](DdosProtectionPlan.md) | Parameters supplied to the create or update operation. |  |

### Return type

[**DdosProtectionPlan**](DdosProtectionPlan.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ddos_protection_plans_delete

> ddos_protection_plans_delete(api_version, subscription_id, resource_group_name, ddos_protection_plan_name)



Deletes the specified DDoS protection plan.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosProtectionPlansApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ddos_protection_plan_name = 'ddos_protection_plan_name_example' # String | The name of the DDoS protection plan.

begin
  
  api_instance.ddos_protection_plans_delete(api_version, subscription_id, resource_group_name, ddos_protection_plan_name)
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_delete: #{e}"
end
```

#### Using the ddos_protection_plans_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ddos_protection_plans_delete_with_http_info(api_version, subscription_id, resource_group_name, ddos_protection_plan_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_protection_plans_delete_with_http_info(api_version, subscription_id, resource_group_name, ddos_protection_plan_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ddos_protection_plan_name** | **String** | The name of the DDoS protection plan. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ddos_protection_plans_get

> <DdosProtectionPlan> ddos_protection_plans_get(api_version, subscription_id, resource_group_name, ddos_protection_plan_name)



Gets information about the specified DDoS protection plan.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosProtectionPlansApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ddos_protection_plan_name = 'ddos_protection_plan_name_example' # String | The name of the DDoS protection plan.

begin
  
  result = api_instance.ddos_protection_plans_get(api_version, subscription_id, resource_group_name, ddos_protection_plan_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_get: #{e}"
end
```

#### Using the ddos_protection_plans_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosProtectionPlan>, Integer, Hash)> ddos_protection_plans_get_with_http_info(api_version, subscription_id, resource_group_name, ddos_protection_plan_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_protection_plans_get_with_http_info(api_version, subscription_id, resource_group_name, ddos_protection_plan_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosProtectionPlan>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ddos_protection_plan_name** | **String** | The name of the DDoS protection plan. |  |

### Return type

[**DdosProtectionPlan**](DdosProtectionPlan.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ddos_protection_plans_list

> <DdosProtectionPlanListResult> ddos_protection_plans_list(api_version, subscription_id)



Gets all DDoS protection plans in a subscription.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosProtectionPlansApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.

begin
  
  result = api_instance.ddos_protection_plans_list(api_version, subscription_id)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_list: #{e}"
end
```

#### Using the ddos_protection_plans_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosProtectionPlanListResult>, Integer, Hash)> ddos_protection_plans_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_protection_plans_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosProtectionPlanListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |

### Return type

[**DdosProtectionPlanListResult**](DdosProtectionPlanListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ddos_protection_plans_list_by_resource_group

> <DdosProtectionPlanListResult> ddos_protection_plans_list_by_resource_group(api_version, subscription_id, resource_group_name)



Gets all the DDoS protection plans in a resource group.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosProtectionPlansApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.ddos_protection_plans_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_list_by_resource_group: #{e}"
end
```

#### Using the ddos_protection_plans_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosProtectionPlanListResult>, Integer, Hash)> ddos_protection_plans_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_protection_plans_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosProtectionPlanListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**DdosProtectionPlanListResult**](DdosProtectionPlanListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ddos_protection_plans_update_tags

> <DdosProtectionPlan> ddos_protection_plans_update_tags(api_version, subscription_id, resource_group_name, ddos_protection_plan_name, parameters)



Update a DDoS protection plan tags.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DdosProtectionPlansApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
ddos_protection_plan_name = 'ddos_protection_plan_name_example' # String | The name of the DDoS protection plan.
parameters = AzureSDK::TagsObject.new # TagsObject | Parameters supplied to the update DDoS protection plan resource tags.

begin
  
  result = api_instance.ddos_protection_plans_update_tags(api_version, subscription_id, resource_group_name, ddos_protection_plan_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_update_tags: #{e}"
end
```

#### Using the ddos_protection_plans_update_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DdosProtectionPlan>, Integer, Hash)> ddos_protection_plans_update_tags_with_http_info(api_version, subscription_id, resource_group_name, ddos_protection_plan_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.ddos_protection_plans_update_tags_with_http_info(api_version, subscription_id, resource_group_name, ddos_protection_plan_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DdosProtectionPlan>
rescue AzureSDK::ApiError => e
  puts "Error when calling DdosProtectionPlansApi->ddos_protection_plans_update_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **ddos_protection_plan_name** | **String** | The name of the DDoS protection plan. |  |
| **parameters** | [**TagsObject**](TagsObject.md) | Parameters supplied to the update DDoS protection plan resource tags. |  |

### Return type

[**DdosProtectionPlan**](DdosProtectionPlan.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


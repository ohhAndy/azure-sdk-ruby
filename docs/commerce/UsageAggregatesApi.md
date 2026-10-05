# AzureRest::UsageAggregatesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**usage_aggregates_list**](UsageAggregatesApi.md#usage_aggregates_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Commerce/usageAggregates |  |


## usage_aggregates_list

> <UsageAggregationListResult> usage_aggregates_list(api_version, subscription_id, reported_start_time, reported_end_time, opts)



Query aggregated Azure subscription consumption data for a date range.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::UsageAggregatesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
reported_start_time = Time.parse('2013-10-20T19:20:30+01:00') # Time | The start of the time range to retrieve data for.
reported_end_time = Time.parse('2013-10-20T19:20:30+01:00') # Time | The end of the time range to retrieve data for.
opts = {
  show_details: true, # Boolean | `True` returns usage data in instance-level detail, `false` causes server-side aggregation with fewer details. For example, if you have 3 website instances, by default you will get 3 line items for website consumption. If you specify showDetails = false, the data will be aggregated as a single line item for website consumption within the time period (for the given subscriptionId, meterId, usageStartTime and usageEndTime).
  aggregation_granularity: 'Daily', # String | `Daily` (default) returns the data in daily granularity, `Hourly` returns the data in hourly granularity.
  continuation_token: 'continuation_token_example' # String | Used when a continuation token string is provided in the response body of the previous call, enabling paging through a large result set. If not present, the data is retrieved from the beginning of the day/hour (based on the granularity) passed in.
}

begin
  
  result = api_instance.usage_aggregates_list(api_version, subscription_id, reported_start_time, reported_end_time, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling UsageAggregatesApi->usage_aggregates_list: #{e}"
end
```

#### Using the usage_aggregates_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageAggregationListResult>, Integer, Hash)> usage_aggregates_list_with_http_info(api_version, subscription_id, reported_start_time, reported_end_time, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.usage_aggregates_list_with_http_info(api_version, subscription_id, reported_start_time, reported_end_time, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageAggregationListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling UsageAggregatesApi->usage_aggregates_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **reported_start_time** | **Time** | The start of the time range to retrieve data for. |  |
| **reported_end_time** | **Time** | The end of the time range to retrieve data for. |  |
| **show_details** | **Boolean** | &#x60;True&#x60; returns usage data in instance-level detail, &#x60;false&#x60; causes server-side aggregation with fewer details. For example, if you have 3 website instances, by default you will get 3 line items for website consumption. If you specify showDetails &#x3D; false, the data will be aggregated as a single line item for website consumption within the time period (for the given subscriptionId, meterId, usageStartTime and usageEndTime). | [optional] |
| **aggregation_granularity** | **String** | &#x60;Daily&#x60; (default) returns the data in daily granularity, &#x60;Hourly&#x60; returns the data in hourly granularity. | [optional][default to &#39;Daily&#39;] |
| **continuation_token** | **String** | Used when a continuation token string is provided in the response body of the previous call, enabling paging through a large result set. If not present, the data is retrieved from the beginning of the day/hour (based on the granularity) passed in. | [optional] |

### Return type

[**UsageAggregationListResult**](UsageAggregationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# AzureRest::LogAnalyticsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**log_analytics_export_request_rate_by_interval**](LogAnalyticsApi.md#log_analytics_export_request_rate_by_interval) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/logAnalytics/apiAccess/getRequestRateByInterval |  |
| [**log_analytics_export_throttled_requests**](LogAnalyticsApi.md#log_analytics_export_throttled_requests) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/logAnalytics/apiAccess/getThrottledRequests |  |


## log_analytics_export_request_rate_by_interval

> <LogAnalyticsOperationResult> log_analytics_export_request_rate_by_interval(api_version, subscription_id, location, parameters)



Export logs that show Api requests made by this subscription in the given time window to show throttling activities.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LogAnalyticsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
parameters = AzureRest::RequestRateByIntervalInput.new({blob_container_sas_uri: 'blob_container_sas_uri_example', from_time: Time.now, to_time: Time.now, interval_length: AzureRest::IntervalInMins::THREE_MINS}) # RequestRateByIntervalInput | Parameters supplied to the LogAnalytics getRequestRateByInterval Api.

begin
  
  result = api_instance.log_analytics_export_request_rate_by_interval(api_version, subscription_id, location, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LogAnalyticsApi->log_analytics_export_request_rate_by_interval: #{e}"
end
```

#### Using the log_analytics_export_request_rate_by_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogAnalyticsOperationResult>, Integer, Hash)> log_analytics_export_request_rate_by_interval_with_http_info(api_version, subscription_id, location, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.log_analytics_export_request_rate_by_interval_with_http_info(api_version, subscription_id, location, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogAnalyticsOperationResult>
rescue AzureRest::ApiError => e
  puts "Error when calling LogAnalyticsApi->log_analytics_export_request_rate_by_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **parameters** | [**RequestRateByIntervalInput**](RequestRateByIntervalInput.md) | Parameters supplied to the LogAnalytics getRequestRateByInterval Api. |  |

### Return type

[**LogAnalyticsOperationResult**](LogAnalyticsOperationResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## log_analytics_export_throttled_requests

> <LogAnalyticsOperationResult> log_analytics_export_throttled_requests(api_version, subscription_id, location, parameters)



Export logs that show total throttled Api requests for this subscription in the given time window.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::LogAnalyticsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
parameters = AzureRest::ThrottledRequestsInput.new({blob_container_sas_uri: 'blob_container_sas_uri_example', from_time: Time.now, to_time: Time.now}) # ThrottledRequestsInput | The request body

begin
  
  result = api_instance.log_analytics_export_throttled_requests(api_version, subscription_id, location, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling LogAnalyticsApi->log_analytics_export_throttled_requests: #{e}"
end
```

#### Using the log_analytics_export_throttled_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogAnalyticsOperationResult>, Integer, Hash)> log_analytics_export_throttled_requests_with_http_info(api_version, subscription_id, location, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.log_analytics_export_throttled_requests_with_http_info(api_version, subscription_id, location, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogAnalyticsOperationResult>
rescue AzureRest::ApiError => e
  puts "Error when calling LogAnalyticsApi->log_analytics_export_throttled_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **parameters** | [**ThrottledRequestsInput**](ThrottledRequestsInput.md) | The request body |  |

### Return type

[**LogAnalyticsOperationResult**](LogAnalyticsOperationResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


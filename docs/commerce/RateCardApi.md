# AzureRest::RateCardApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**rate_card_get**](RateCardApi.md#rate_card_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Commerce/rateCard |  |


## rate_card_get

> <ResourceRateCardInfo> rate_card_get(api_version, subscription_id, filter)



Enables you to query for the resource/meter metadata and related prices used in a given subscription by Offer ID, Currency, Locale and Region. The metadata associated with the billing meters, including but not limited to service names, types, resources, units of measure, and regions, is subject to change at any time and without notice. If you intend to use this billing data in an automated fashion, please use the billing meter GUID to uniquely identify each billable item. If the billing meter GUID is scheduled to change due to a new billing model, you will be notified in advance of the change.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::RateCardApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
filter = 'filter_example' # String | The filter to apply on the operation. It ONLY supports the 'eq' and 'and' logical operators at this time. All the 4 query parameters 'OfferDurableId',  'Currency', 'Locale', 'Region' are required to be a part of the $filter.

begin
  
  result = api_instance.rate_card_get(api_version, subscription_id, filter)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling RateCardApi->rate_card_get: #{e}"
end
```

#### Using the rate_card_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRateCardInfo>, Integer, Hash)> rate_card_get_with_http_info(api_version, subscription_id, filter)

```ruby
begin
  
  data, status_code, headers = api_instance.rate_card_get_with_http_info(api_version, subscription_id, filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRateCardInfo>
rescue AzureRest::ApiError => e
  puts "Error when calling RateCardApi->rate_card_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **filter** | **String** | The filter to apply on the operation. It ONLY supports the &#39;eq&#39; and &#39;and&#39; logical operators at this time. All the 4 query parameters &#39;OfferDurableId&#39;,  &#39;Currency&#39;, &#39;Locale&#39;, &#39;Region&#39; are required to be a part of the $filter. |  |

### Return type

[**ResourceRateCardInfo**](ResourceRateCardInfo.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


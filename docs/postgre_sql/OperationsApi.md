# AzureRest::OperationsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**operations_list**](OperationsApi.md#operations_list) | **GET** /providers/Microsoft.DBforPostgreSQL/operations |  |


## operations_list

> <OperationList> operations_list(api_version)



Lists all available REST API operations.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::OperationsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.

begin
  
  result = api_instance.operations_list(api_version)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling OperationsApi->operations_list: #{e}"
end
```

#### Using the operations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OperationList>, Integer, Hash)> operations_list_with_http_info(api_version)

```ruby
begin
  
  data, status_code, headers = api_instance.operations_list_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OperationList>
rescue AzureRest::ApiError => e
  puts "Error when calling OperationsApi->operations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |

### Return type

[**OperationList**](OperationList.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


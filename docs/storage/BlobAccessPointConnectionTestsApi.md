# AzureRest::BlobAccessPointConnectionTestsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**blob_access_point_connection_tests_test_proposed_connection**](BlobAccessPointConnectionTestsApi.md#blob_access_point_connection_tests_test_proposed_connection) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/testBlobAccessPointConfigurationProposedConnection |  |


## blob_access_point_connection_tests_test_proposed_connection

> <BlobAccessPointConnectionTestResponse> blob_access_point_connection_tests_test_proposed_connection(api_version, subscription_id, resource_group_name, account_name, body)



Test a proposed Blob Access Point connection before the configuration is created. The connection is validated in the context of the storage account in the request path, so no Blob Access Point configuration needs to exist beforehand.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::BlobAccessPointConnectionTestsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
account_name = 'account_name_example' # String | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
body = AzureRest::BlobAccessPointProposedConnectionTestRequest.new({source: AzureRest::BlobAccessPointSourceProperties.new({source_type: AzureRest::BlobAccessPointSourceType::NET_APP_ONTAP})}) # BlobAccessPointProposedConnectionTestRequest | The content of the action request

begin
  
  result = api_instance.blob_access_point_connection_tests_test_proposed_connection(api_version, subscription_id, resource_group_name, account_name, body)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling BlobAccessPointConnectionTestsApi->blob_access_point_connection_tests_test_proposed_connection: #{e}"
end
```

#### Using the blob_access_point_connection_tests_test_proposed_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlobAccessPointConnectionTestResponse>, Integer, Hash)> blob_access_point_connection_tests_test_proposed_connection_with_http_info(api_version, subscription_id, resource_group_name, account_name, body)

```ruby
begin
  
  data, status_code, headers = api_instance.blob_access_point_connection_tests_test_proposed_connection_with_http_info(api_version, subscription_id, resource_group_name, account_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlobAccessPointConnectionTestResponse>
rescue AzureRest::ApiError => e
  puts "Error when calling BlobAccessPointConnectionTestsApi->blob_access_point_connection_tests_test_proposed_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **account_name** | **String** | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |  |
| **body** | [**BlobAccessPointProposedConnectionTestRequest**](BlobAccessPointProposedConnectionTestRequest.md) | The content of the action request |  |

### Return type

[**BlobAccessPointConnectionTestResponse**](BlobAccessPointConnectionTestResponse.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


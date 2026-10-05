# AzureRest::DeletedAccountsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**deleted_accounts_get**](DeletedAccountsApi.md#deleted_accounts_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Storage/locations/{location}/deletedAccounts/{deletedAccountName} |  |


## deleted_accounts_get

> <DeletedAccount> deleted_accounts_get(api_version, subscription_id, location, deleted_account_name)



Get properties of specified deleted account resource.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::DeletedAccountsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.
deleted_account_name = 'deleted_account_name_example' # String | Name of the deleted storage account.

begin
  
  result = api_instance.deleted_accounts_get(api_version, subscription_id, location, deleted_account_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling DeletedAccountsApi->deleted_accounts_get: #{e}"
end
```

#### Using the deleted_accounts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedAccount>, Integer, Hash)> deleted_accounts_get_with_http_info(api_version, subscription_id, location, deleted_account_name)

```ruby
begin
  
  data, status_code, headers = api_instance.deleted_accounts_get_with_http_info(api_version, subscription_id, location, deleted_account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedAccount>
rescue AzureRest::ApiError => e
  puts "Error when calling DeletedAccountsApi->deleted_accounts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |
| **deleted_account_name** | **String** | Name of the deleted storage account. |  |

### Return type

[**DeletedAccount**](DeletedAccount.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


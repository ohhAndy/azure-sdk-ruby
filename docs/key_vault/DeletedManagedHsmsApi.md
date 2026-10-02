# AzureSDK::DeletedManagedHsmsApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**managed_hsms_get_deleted**](DeletedManagedHsmsApi.md#managed_hsms_get_deleted) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/locations/{location}/deletedManagedHSMs/{name} |  |
| [**managed_hsms_purge_deleted**](DeletedManagedHsmsApi.md#managed_hsms_purge_deleted) | **POST** /subscriptions/{subscriptionId}/providers/Microsoft.KeyVault/locations/{location}/deletedManagedHSMs/{name}/purge |  |


## managed_hsms_get_deleted

> <DeletedManagedHsm> managed_hsms_get_deleted(api_version, subscription_id, location, name)



Gets the specified deleted managed HSM.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DeletedManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.
name = 'name_example' # String | The name of the deleted managed HSM.

begin
  
  result = api_instance.managed_hsms_get_deleted(api_version, subscription_id, location, name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DeletedManagedHsmsApi->managed_hsms_get_deleted: #{e}"
end
```

#### Using the managed_hsms_get_deleted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedManagedHsm>, Integer, Hash)> managed_hsms_get_deleted_with_http_info(api_version, subscription_id, location, name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_get_deleted_with_http_info(api_version, subscription_id, location, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedManagedHsm>
rescue AzureSDK::ApiError => e
  puts "Error when calling DeletedManagedHsmsApi->managed_hsms_get_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |
| **name** | **String** | The name of the deleted managed HSM. |  |

### Return type

[**DeletedManagedHsm**](DeletedManagedHsm.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## managed_hsms_purge_deleted

> managed_hsms_purge_deleted(api_version, subscription_id, location, name)



Permanently deletes the specified managed HSM.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DeletedManagedHsmsApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.
name = 'name_example' # String | The name of the deleted managed HSM.

begin
  
  api_instance.managed_hsms_purge_deleted(api_version, subscription_id, location, name)
rescue AzureSDK::ApiError => e
  puts "Error when calling DeletedManagedHsmsApi->managed_hsms_purge_deleted: #{e}"
end
```

#### Using the managed_hsms_purge_deleted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> managed_hsms_purge_deleted_with_http_info(api_version, subscription_id, location, name)

```ruby
begin
  
  data, status_code, headers = api_instance.managed_hsms_purge_deleted_with_http_info(api_version, subscription_id, location, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DeletedManagedHsmsApi->managed_hsms_purge_deleted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |
| **name** | **String** | The name of the deleted managed HSM. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


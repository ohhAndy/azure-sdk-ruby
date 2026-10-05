# AzureRest::ImagesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**images_create_or_update**](ImagesApi.md#images_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName} |  |
| [**images_delete**](ImagesApi.md#images_delete) | **DELETE** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName} |  |
| [**images_get**](ImagesApi.md#images_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName} |  |
| [**images_list**](ImagesApi.md#images_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/images |  |
| [**images_list_by_resource_group**](ImagesApi.md#images_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images |  |
| [**images_update**](ImagesApi.md#images_update) | **PATCH** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName} |  |


## images_create_or_update

> <Image> images_create_or_update(api_version, subscription_id, resource_group_name, image_name, parameters)



Create or update an image.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
image_name = 'image_name_example' # String | The name of the image.
parameters = AzureRest::Image.new({location: 'location_example'}) # Image | Parameters supplied to the Create Image operation.

begin
  
  result = api_instance.images_create_or_update(api_version, subscription_id, resource_group_name, image_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_create_or_update: #{e}"
end
```

#### Using the images_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> images_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, image_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.images_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, image_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **image_name** | **String** | The name of the image. |  |
| **parameters** | [**Image**](Image.md) | Parameters supplied to the Create Image operation. |  |

### Return type

[**Image**](Image.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## images_delete

> images_delete(api_version, subscription_id, resource_group_name, image_name)



Deletes an Image.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
image_name = 'image_name_example' # String | The name of the image.

begin
  
  api_instance.images_delete(api_version, subscription_id, resource_group_name, image_name)
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_delete: #{e}"
end
```

#### Using the images_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> images_delete_with_http_info(api_version, subscription_id, resource_group_name, image_name)

```ruby
begin
  
  data, status_code, headers = api_instance.images_delete_with_http_info(api_version, subscription_id, resource_group_name, image_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **image_name** | **String** | The name of the image. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## images_get

> <Image> images_get(api_version, subscription_id, resource_group_name, image_name, opts)



Gets an image.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
image_name = 'image_name_example' # String | The name of the image.
opts = {
  expand: 'expand_example' # String | The expand expression to apply on the operation.
}

begin
  
  result = api_instance.images_get(api_version, subscription_id, resource_group_name, image_name, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_get: #{e}"
end
```

#### Using the images_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> images_get_with_http_info(api_version, subscription_id, resource_group_name, image_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.images_get_with_http_info(api_version, subscription_id, resource_group_name, image_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **image_name** | **String** | The name of the image. |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## images_list

> <ImageListResult> images_list(api_version, subscription_id)



Gets the list of Images in the subscription. Use nextLink property in the response to get the next page of Images. Do this till nextLink is null to fetch all the Images.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.images_list(api_version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_list: #{e}"
end
```

#### Using the images_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImageListResult>, Integer, Hash)> images_list_with_http_info(api_version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.images_list_with_http_info(api_version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImageListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**ImageListResult**](ImageListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## images_list_by_resource_group

> <ImageListResult> images_list_by_resource_group(api_version, subscription_id, resource_group_name)



Gets the list of images under a resource group. Use nextLink property in the response to get the next page of Images. Do this till nextLink is null to fetch all the Images.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.

begin
  
  result = api_instance.images_list_by_resource_group(api_version, subscription_id, resource_group_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_list_by_resource_group: #{e}"
end
```

#### Using the images_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImageListResult>, Integer, Hash)> images_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)

```ruby
begin
  
  data, status_code, headers = api_instance.images_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImageListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |

### Return type

[**ImageListResult**](ImageListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## images_update

> <Image> images_update(api_version, subscription_id, resource_group_name, image_name, parameters)



Update an image.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::ImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
image_name = 'image_name_example' # String | The name of the image.
parameters = AzureRest::ImageUpdate.new # ImageUpdate | Parameters supplied to the Update Image operation.

begin
  
  result = api_instance.images_update(api_version, subscription_id, resource_group_name, image_name, parameters)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_update: #{e}"
end
```

#### Using the images_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> images_update_with_http_info(api_version, subscription_id, resource_group_name, image_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.images_update_with_http_info(api_version, subscription_id, resource_group_name, image_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue AzureRest::ApiError => e
  puts "Error when calling ImagesApi->images_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **image_name** | **String** | The name of the image. |  |
| **parameters** | [**ImageUpdate**](ImageUpdate.md) | Parameters supplied to the Update Image operation. |  |

### Return type

[**Image**](Image.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


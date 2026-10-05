# AzureRest::VirtualMachineImagesApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**virtual_machine_images_edge_zone_get**](VirtualMachineImagesApi.md#virtual_machine_images_edge_zone_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/edgeZones/{edgeZone}/publishers/{publisherName}/artifacttypes/vmimage/offers/{offer}/skus/{skus}/versions/{version} |  |
| [**virtual_machine_images_edge_zone_list**](VirtualMachineImagesApi.md#virtual_machine_images_edge_zone_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/edgeZones/{edgeZone}/publishers/{publisherName}/artifacttypes/vmimage/offers/{offer}/skus/{skus}/versions |  |
| [**virtual_machine_images_edge_zone_list_offers**](VirtualMachineImagesApi.md#virtual_machine_images_edge_zone_list_offers) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/edgeZones/{edgeZone}/publishers/{publisherName}/artifacttypes/vmimage/offers |  |
| [**virtual_machine_images_edge_zone_list_publishers**](VirtualMachineImagesApi.md#virtual_machine_images_edge_zone_list_publishers) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/edgeZones/{edgeZone}/publishers |  |
| [**virtual_machine_images_edge_zone_list_skus**](VirtualMachineImagesApi.md#virtual_machine_images_edge_zone_list_skus) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/edgeZones/{edgeZone}/publishers/{publisherName}/artifacttypes/vmimage/offers/{offer}/skus |  |
| [**virtual_machine_images_get**](VirtualMachineImagesApi.md#virtual_machine_images_get) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmimage/offers/{offer}/skus/{skus}/versions/{version} |  |
| [**virtual_machine_images_list**](VirtualMachineImagesApi.md#virtual_machine_images_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmimage/offers/{offer}/skus/{skus}/versions |  |
| [**virtual_machine_images_list_by_edge_zone**](VirtualMachineImagesApi.md#virtual_machine_images_list_by_edge_zone) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/edgeZones/{edgeZone}/vmimages |  |
| [**virtual_machine_images_list_offers**](VirtualMachineImagesApi.md#virtual_machine_images_list_offers) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmimage/offers |  |
| [**virtual_machine_images_list_publishers**](VirtualMachineImagesApi.md#virtual_machine_images_list_publishers) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers |  |
| [**virtual_machine_images_list_skus**](VirtualMachineImagesApi.md#virtual_machine_images_list_skus) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmimage/offers/{offer}/skus |  |


## virtual_machine_images_edge_zone_get

> <VirtualMachineImage> virtual_machine_images_edge_zone_get(api_version, location, edge_zone, publisher_name, offer, skus, version, subscription_id)



Gets a virtual machine image in an edge zone.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
location = 'location_example' # String | The name of Azure region.
edge_zone = 'edge_zone_example' # String | The name of the edge zone.
publisher_name = 'publisher_name_example' # String | A valid image publisher.
offer = 'offer_example' # String | A valid image publisher offer.
skus = 'skus_example' # String | A valid image SKU.
version = 'version_example' # String | A valid image SKU version.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.virtual_machine_images_edge_zone_get(api_version, location, edge_zone, publisher_name, offer, skus, version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_get: #{e}"
end
```

#### Using the virtual_machine_images_edge_zone_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineImage>, Integer, Hash)> virtual_machine_images_edge_zone_get_with_http_info(api_version, location, edge_zone, publisher_name, offer, skus, version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_edge_zone_get_with_http_info(api_version, location, edge_zone, publisher_name, offer, skus, version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineImage>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **location** | **String** | The name of Azure region. |  |
| **edge_zone** | **String** | The name of the edge zone. |  |
| **publisher_name** | **String** | A valid image publisher. |  |
| **offer** | **String** | A valid image publisher offer. |  |
| **skus** | **String** | A valid image SKU. |  |
| **version** | **String** | A valid image SKU version. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**VirtualMachineImage**](VirtualMachineImage.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_edge_zone_list

> <Array<VirtualMachineImageResource>> virtual_machine_images_edge_zone_list(api_version, subscription_id, location, edge_zone, publisher_name, offer, skus, opts)



Gets a list of all virtual machine image versions for the specified location, edge zone, publisher, offer, and SKU.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
edge_zone = 'edge_zone_example' # String | The name of the edge zone.
publisher_name = 'publisher_name_example' # String | A valid image publisher.
offer = 'offer_example' # String | A valid image publisher offer.
skus = 'skus_example' # String | A valid image SKU.
opts = {
  expand: 'expand_example', # String | The expand expression to apply on the operation.
  top: 56, # Integer | An integer value specifying the number of images to return that matches supplied values.
  orderby: 'orderby_example' # String | Specifies the order of the results returned. Formatted as an OData query.
}

begin
  
  result = api_instance.virtual_machine_images_edge_zone_list(api_version, subscription_id, location, edge_zone, publisher_name, offer, skus, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_list: #{e}"
end
```

#### Using the virtual_machine_images_edge_zone_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineImageResource>>, Integer, Hash)> virtual_machine_images_edge_zone_list_with_http_info(api_version, subscription_id, location, edge_zone, publisher_name, offer, skus, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_edge_zone_list_with_http_info(api_version, subscription_id, location, edge_zone, publisher_name, offer, skus, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineImageResource>>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **edge_zone** | **String** | The name of the edge zone. |  |
| **publisher_name** | **String** | A valid image publisher. |  |
| **offer** | **String** | A valid image publisher offer. |  |
| **skus** | **String** | A valid image SKU. |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |
| **top** | **Integer** | An integer value specifying the number of images to return that matches supplied values. | [optional] |
| **orderby** | **String** | Specifies the order of the results returned. Formatted as an OData query. | [optional] |

### Return type

[**Array&lt;VirtualMachineImageResource&gt;**](VirtualMachineImageResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_edge_zone_list_offers

> <Array<VirtualMachineImageResource>> virtual_machine_images_edge_zone_list_offers(api_version, subscription_id, location, edge_zone, publisher_name)



Gets a list of virtual machine image offers for the specified location, edge zone and publisher.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
edge_zone = 'edge_zone_example' # String | The name of the edge zone.
publisher_name = 'publisher_name_example' # String | A valid image publisher.

begin
  
  result = api_instance.virtual_machine_images_edge_zone_list_offers(api_version, subscription_id, location, edge_zone, publisher_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_list_offers: #{e}"
end
```

#### Using the virtual_machine_images_edge_zone_list_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineImageResource>>, Integer, Hash)> virtual_machine_images_edge_zone_list_offers_with_http_info(api_version, subscription_id, location, edge_zone, publisher_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_edge_zone_list_offers_with_http_info(api_version, subscription_id, location, edge_zone, publisher_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineImageResource>>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_list_offers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **edge_zone** | **String** | The name of the edge zone. |  |
| **publisher_name** | **String** | A valid image publisher. |  |

### Return type

[**Array&lt;VirtualMachineImageResource&gt;**](VirtualMachineImageResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_edge_zone_list_publishers

> <Array<VirtualMachineImageResource>> virtual_machine_images_edge_zone_list_publishers(api_version, subscription_id, location, edge_zone)



Gets a list of virtual machine image publishers for the specified Azure location and edge zone.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
edge_zone = 'edge_zone_example' # String | The name of the edge zone.

begin
  
  result = api_instance.virtual_machine_images_edge_zone_list_publishers(api_version, subscription_id, location, edge_zone)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_list_publishers: #{e}"
end
```

#### Using the virtual_machine_images_edge_zone_list_publishers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineImageResource>>, Integer, Hash)> virtual_machine_images_edge_zone_list_publishers_with_http_info(api_version, subscription_id, location, edge_zone)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_edge_zone_list_publishers_with_http_info(api_version, subscription_id, location, edge_zone)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineImageResource>>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_list_publishers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **edge_zone** | **String** | The name of the edge zone. |  |

### Return type

[**Array&lt;VirtualMachineImageResource&gt;**](VirtualMachineImageResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_edge_zone_list_skus

> <Array<VirtualMachineImageResource>> virtual_machine_images_edge_zone_list_skus(api_version, subscription_id, location, edge_zone, publisher_name, offer)



Gets a list of virtual machine image SKUs for the specified location, edge zone, publisher, and offer.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
edge_zone = 'edge_zone_example' # String | The name of the edge zone.
publisher_name = 'publisher_name_example' # String | A valid image publisher.
offer = 'offer_example' # String | A valid image publisher offer.

begin
  
  result = api_instance.virtual_machine_images_edge_zone_list_skus(api_version, subscription_id, location, edge_zone, publisher_name, offer)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_list_skus: #{e}"
end
```

#### Using the virtual_machine_images_edge_zone_list_skus_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineImageResource>>, Integer, Hash)> virtual_machine_images_edge_zone_list_skus_with_http_info(api_version, subscription_id, location, edge_zone, publisher_name, offer)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_edge_zone_list_skus_with_http_info(api_version, subscription_id, location, edge_zone, publisher_name, offer)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineImageResource>>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_edge_zone_list_skus_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **edge_zone** | **String** | The name of the edge zone. |  |
| **publisher_name** | **String** | A valid image publisher. |  |
| **offer** | **String** | A valid image publisher offer. |  |

### Return type

[**Array&lt;VirtualMachineImageResource&gt;**](VirtualMachineImageResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_get

> <VirtualMachineImage> virtual_machine_images_get(api_version, location, publisher_name, offer, skus, version, subscription_id)



Gets a virtual machine image.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
location = 'location_example' # String | The name of Azure region.
publisher_name = 'publisher_name_example' # String | A valid image publisher.
offer = 'offer_example' # String | A valid image publisher offer.
skus = 'skus_example' # String | A valid image SKU.
version = 'version_example' # String | A valid image SKU version.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.

begin
  
  result = api_instance.virtual_machine_images_get(api_version, location, publisher_name, offer, skus, version, subscription_id)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_get: #{e}"
end
```

#### Using the virtual_machine_images_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualMachineImage>, Integer, Hash)> virtual_machine_images_get_with_http_info(api_version, location, publisher_name, offer, skus, version, subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_get_with_http_info(api_version, location, publisher_name, offer, skus, version, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualMachineImage>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **location** | **String** | The name of Azure region. |  |
| **publisher_name** | **String** | A valid image publisher. |  |
| **offer** | **String** | A valid image publisher offer. |  |
| **skus** | **String** | A valid image SKU. |  |
| **version** | **String** | A valid image SKU version. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |

### Return type

[**VirtualMachineImage**](VirtualMachineImage.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_list

> <Array<VirtualMachineImageResource>> virtual_machine_images_list(api_version, subscription_id, location, publisher_name, offer, skus, opts)



Gets a list of all virtual machine image versions for the specified location, publisher, offer, and SKU.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
publisher_name = 'publisher_name_example' # String | A valid image publisher.
offer = 'offer_example' # String | A valid image publisher offer.
skus = 'skus_example' # String | A valid image SKU.
opts = {
  expand: 'expand_example', # String | The expand expression to apply on the operation.
  top: 56, # Integer | 
  orderby: 'orderby_example' # String | 
}

begin
  
  result = api_instance.virtual_machine_images_list(api_version, subscription_id, location, publisher_name, offer, skus, opts)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list: #{e}"
end
```

#### Using the virtual_machine_images_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineImageResource>>, Integer, Hash)> virtual_machine_images_list_with_http_info(api_version, subscription_id, location, publisher_name, offer, skus, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_list_with_http_info(api_version, subscription_id, location, publisher_name, offer, skus, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineImageResource>>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **publisher_name** | **String** | A valid image publisher. |  |
| **offer** | **String** | A valid image publisher offer. |  |
| **skus** | **String** | A valid image SKU. |  |
| **expand** | **String** | The expand expression to apply on the operation. | [optional] |
| **top** | **Integer** |  | [optional] |
| **orderby** | **String** |  | [optional] |

### Return type

[**Array&lt;VirtualMachineImageResource&gt;**](VirtualMachineImageResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_list_by_edge_zone

> <VmImagesInEdgeZoneListResult> virtual_machine_images_list_by_edge_zone(api_version, subscription_id, location, edge_zone)



Gets a list of all virtual machine image versions for the specified edge zone

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
edge_zone = 'edge_zone_example' # String | The name of the edge zone.

begin
  
  result = api_instance.virtual_machine_images_list_by_edge_zone(api_version, subscription_id, location, edge_zone)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list_by_edge_zone: #{e}"
end
```

#### Using the virtual_machine_images_list_by_edge_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VmImagesInEdgeZoneListResult>, Integer, Hash)> virtual_machine_images_list_by_edge_zone_with_http_info(api_version, subscription_id, location, edge_zone)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_list_by_edge_zone_with_http_info(api_version, subscription_id, location, edge_zone)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VmImagesInEdgeZoneListResult>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list_by_edge_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **edge_zone** | **String** | The name of the edge zone. |  |

### Return type

[**VmImagesInEdgeZoneListResult**](VmImagesInEdgeZoneListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_list_offers

> <Array<VirtualMachineImageResource>> virtual_machine_images_list_offers(api_version, subscription_id, location, publisher_name)



Gets a list of virtual machine image offers for the specified location and publisher.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
publisher_name = 'publisher_name_example' # String | A valid image publisher.

begin
  
  result = api_instance.virtual_machine_images_list_offers(api_version, subscription_id, location, publisher_name)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list_offers: #{e}"
end
```

#### Using the virtual_machine_images_list_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineImageResource>>, Integer, Hash)> virtual_machine_images_list_offers_with_http_info(api_version, subscription_id, location, publisher_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_list_offers_with_http_info(api_version, subscription_id, location, publisher_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineImageResource>>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list_offers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **publisher_name** | **String** | A valid image publisher. |  |

### Return type

[**Array&lt;VirtualMachineImageResource&gt;**](VirtualMachineImageResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_list_publishers

> <Array<VirtualMachineImageResource>> virtual_machine_images_list_publishers(api_version, subscription_id, location)



Gets a list of virtual machine image publishers for the specified Azure location.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.

begin
  
  result = api_instance.virtual_machine_images_list_publishers(api_version, subscription_id, location)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list_publishers: #{e}"
end
```

#### Using the virtual_machine_images_list_publishers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineImageResource>>, Integer, Hash)> virtual_machine_images_list_publishers_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_list_publishers_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineImageResource>>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list_publishers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |

### Return type

[**Array&lt;VirtualMachineImageResource&gt;**](VirtualMachineImageResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_machine_images_list_skus

> <Array<VirtualMachineImageResource>> virtual_machine_images_list_skus(api_version, subscription_id, location, publisher_name, offer)



Gets a list of virtual machine image SKUs for the specified location, publisher, and offer.

### Examples

```ruby
require 'time'
require 'azure_rest'
# setup authorization
AzureRest.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureRest::VirtualMachineImagesApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = 'subscription_id_example' # String | The ID of the target subscription.
location = 'location_example' # String | The name of Azure region.
publisher_name = 'publisher_name_example' # String | A valid image publisher.
offer = 'offer_example' # String | A valid image publisher offer.

begin
  
  result = api_instance.virtual_machine_images_list_skus(api_version, subscription_id, location, publisher_name, offer)
  p result
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list_skus: #{e}"
end
```

#### Using the virtual_machine_images_list_skus_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VirtualMachineImageResource>>, Integer, Hash)> virtual_machine_images_list_skus_with_http_info(api_version, subscription_id, location, publisher_name, offer)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_machine_images_list_skus_with_http_info(api_version, subscription_id, location, publisher_name, offer)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VirtualMachineImageResource>>
rescue AzureRest::ApiError => e
  puts "Error when calling VirtualMachineImagesApi->virtual_machine_images_list_skus_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. |  |
| **location** | **String** | The name of Azure region. |  |
| **publisher_name** | **String** | A valid image publisher. |  |
| **offer** | **String** | A valid image publisher offer. |  |

### Return type

[**Array&lt;VirtualMachineImageResource&gt;**](VirtualMachineImageResource.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


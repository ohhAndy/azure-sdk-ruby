# AzureRest::ImageReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional] |
| **publisher** | **String** | The image publisher. | [optional] |
| **offer** | **String** | Specifies the offer of the platform image or marketplace image used to create the virtual machine. | [optional] |
| **sku** | **String** | The image SKU. | [optional] |
| **version** | **String** | Specifies the version of the platform image or marketplace image used to create the virtual machine. The allowed formats are Major.Minor.Build or &#39;latest&#39;. Major, Minor, and Build are decimal numbers. Specify &#39;latest&#39; to use the latest version of an image available at deploy time. Even if you use &#39;latest&#39;, the VM image will not automatically update after deploy time even if a new version becomes available. Please do not use field &#39;version&#39; for gallery image deployment, gallery image should always use &#39;id&#39; field for deployment, to use &#39;latest&#39; version of gallery image, just set &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageName}&#39; in the &#39;id&#39; field without version input. | [optional] |
| **exact_version** | **String** | Specifies in decimal numbers, the version of platform image or marketplace image used to create the virtual machine. This readonly field differs from &#39;version&#39;, only if the value specified in &#39;version&#39; field is &#39;latest&#39;. | [optional][readonly] |
| **shared_gallery_image_id** | **String** | Specified the shared gallery image unique id for vm deployment. This can be fetched from shared gallery image GET call. | [optional] |
| **community_gallery_image_id** | **String** | Specified the community gallery image unique id for vm deployment. This can be fetched from community gallery image GET call. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ImageReference.new(
  id: null,
  publisher: null,
  offer: null,
  sku: null,
  version: null,
  exact_version: null,
  shared_gallery_image_id: null,
  community_gallery_image_id: null
)
```


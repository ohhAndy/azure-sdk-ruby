# AzureRest::ApplicationProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gallery_applications** | [**Array&lt;VMGalleryApplication&gt;**](VMGalleryApplication.md) | Specifies the gallery applications that should be made available to the VM/VMSS | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ApplicationProfile.new(
  gallery_applications: null
)
```


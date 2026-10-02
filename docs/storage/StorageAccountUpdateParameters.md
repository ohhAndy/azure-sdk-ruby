# AzureSDK::StorageAccountUpdateParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | [**Sku**](Sku.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater in length than 128 characters and a value no greater in length than 256 characters. | [optional] |
| **identity** | [**Identity**](Identity.md) |  | [optional] |
| **properties** | [**StorageAccountPropertiesUpdateParameters**](StorageAccountPropertiesUpdateParameters.md) |  | [optional] |
| **kind** | [**Kind**](Kind.md) |  | [optional] |
| **zones** | **Array&lt;String&gt;** | Optional. Gets or sets the pinned logical availability zone for the storage account. | [optional] |
| **placement** | [**Placement**](Placement.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageAccountUpdateParameters.new(
  sku: null,
  tags: null,
  identity: null,
  properties: null,
  kind: null,
  zones: null,
  placement: null
)
```


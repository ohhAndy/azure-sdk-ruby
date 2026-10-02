# AzureSDK::DedicatedHostUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**DedicatedHostProperties**](DedicatedHostProperties.md) |  | [optional] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DedicatedHostUpdate.new(
  tags: null,
  properties: null,
  sku: null
)
```


# AzureSDK::ServerForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | [**SkuForPatch**](SkuForPatch.md) |  | [optional] |
| **identity** | [**UserAssignedIdentity**](UserAssignedIdentity.md) |  | [optional] |
| **properties** | [**ServerPropertiesForPatch**](ServerPropertiesForPatch.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Application-specific metadata in the form of key-value pairs. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerForPatch.new(
  sku: null,
  identity: null,
  properties: null,
  tags: null
)
```


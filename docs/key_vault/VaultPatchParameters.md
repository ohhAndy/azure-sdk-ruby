# AzureSDK::VaultPatchParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | The tags that will be assigned to the key vault. | [optional] |
| **properties** | [**VaultPatchProperties**](VaultPatchProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VaultPatchParameters.new(
  tags: null,
  properties: null
)
```


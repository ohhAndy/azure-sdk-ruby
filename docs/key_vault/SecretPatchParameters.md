# AzureRest::SecretPatchParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | The tags that will be assigned to the secret. | [optional] |
| **properties** | [**SecretPatchProperties**](SecretPatchProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SecretPatchParameters.new(
  tags: null,
  properties: null
)
```


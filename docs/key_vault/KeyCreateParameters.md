# AzureSDK::KeyCreateParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | The tags that will be assigned to the key. | [optional] |
| **properties** | [**KeyProperties**](KeyProperties.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::KeyCreateParameters.new(
  tags: null,
  properties: null
)
```


# AzureSDK::SkuProfileVMSize

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Specifies the name of the VM Size. | [optional] |
| **rank** | **Integer** | Specifies the rank (a.k.a priority) associated with the VM Size. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SkuProfileVMSize.new(
  name: null,
  rank: null
)
```


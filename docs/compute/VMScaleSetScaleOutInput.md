# AzureSDK::VMScaleSetScaleOutInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity** | **Integer** | Specifies the number of virtual machines in the scale set. |  |
| **properties** | [**VMScaleSetScaleOutInputProperties**](VMScaleSetScaleOutInputProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VMScaleSetScaleOutInput.new(
  capacity: null,
  properties: null
)
```


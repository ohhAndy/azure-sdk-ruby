# AzureRest::VMScaleSetScaleOutInputProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **zone** | **String** | The zone in which the scale out is requested for the virtual machine scale set. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VMScaleSetScaleOutInputProperties.new(
  zone: null
)
```


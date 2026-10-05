# AzureRest::CapabilityBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**CapabilityStatus**](CapabilityStatus.md) |  | [optional] |
| **reason** | **String** | Reason for the capability not being available. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapabilityBase.new(
  status: null,
  reason: null
)
```


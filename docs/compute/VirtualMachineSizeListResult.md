# AzureSDK::VirtualMachineSizeListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachineSize&gt;**](VirtualMachineSize.md) | The list of virtual machine sizes. | [optional] |
| **next_link** | **String** | The link to the next page of items. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineSizeListResult.new(
  value: null,
  next_link: null
)
```


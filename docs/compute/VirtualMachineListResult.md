# AzureSDK::VirtualMachineListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachine&gt;**](VirtualMachine.md) | The list of virtual machines. |  |
| **next_link** | **String** | The URI to fetch the next page of VMs. Call ListNext() with this URI to fetch the next page of Virtual Machines. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineListResult.new(
  value: null,
  next_link: null
)
```


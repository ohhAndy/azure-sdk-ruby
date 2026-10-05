# AzureRest::VirtualMachineScaleSetListOSUpgradeHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;UpgradeOperationHistoricalStatusInfo&gt;**](UpgradeOperationHistoricalStatusInfo.md) | The list of OS upgrades performed on the virtual machine scale set. |  |
| **next_link** | **String** | The uri to fetch the next page of OS Upgrade History. Call ListNext() with this to fetch the next page of history of upgrades. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetListOSUpgradeHistory.new(
  value: null,
  next_link: null
)
```


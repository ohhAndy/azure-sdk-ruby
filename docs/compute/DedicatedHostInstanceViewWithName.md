# AzureSDK::DedicatedHostInstanceViewWithName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | Specifies the unique id of the dedicated physical machine on which the dedicated host resides. | [optional][readonly] |
| **available_capacity** | [**DedicatedHostAvailableCapacity**](DedicatedHostAvailableCapacity.md) |  | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |
| **name** | **String** | The name of the dedicated host. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DedicatedHostInstanceViewWithName.new(
  asset_id: null,
  available_capacity: null,
  statuses: null,
  name: null
)
```


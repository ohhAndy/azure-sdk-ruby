# AzureRest::VmImagesInEdgeZoneListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachineImageResource&gt;**](VirtualMachineImageResource.md) | The list of VMImages in EdgeZone | [optional] |
| **next_link** | **String** | The URI to fetch the next page of VMImages in EdgeZone. Call ListNext() with this URI to fetch the next page of VmImages. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VmImagesInEdgeZoneListResult.new(
  value: null,
  next_link: null
)
```


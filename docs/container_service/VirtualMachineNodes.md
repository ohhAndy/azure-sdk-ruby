# AzureRest::VirtualMachineNodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **String** | The VM size of the agents used to host this group of nodes. | [optional] |
| **count** | **Integer** | Number of nodes. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineNodes.new(
  size: null,
  count: null
)
```


# AzureRest::DedicatedHostGroupInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hosts** | [**Array&lt;DedicatedHostInstanceViewWithName&gt;**](DedicatedHostInstanceViewWithName.md) | List of instance view of the dedicated hosts under the dedicated host group. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DedicatedHostGroupInstanceView.new(
  hosts: null
)
```


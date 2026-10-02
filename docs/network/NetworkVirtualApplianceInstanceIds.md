# AzureSDK::NetworkVirtualApplianceInstanceIds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_ids** | **Array&lt;String&gt;** | The network virtual appliance instance ids. Omitting the network virtual appliance instance ids will result in the operation being performed on all virtual machines belonging to the network virtual appliance. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkVirtualApplianceInstanceIds.new(
  instance_ids: null
)
```


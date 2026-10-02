# AzureSDK::MachineProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | [**MachineNetworkProperties**](MachineNetworkProperties.md) |  | [optional] |
| **resource_id** | **String** | Azure resource id of the machine. It can be used to GET underlying VM Instance | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MachineProperties.new(
  network: null,
  resource_id: null
)
```


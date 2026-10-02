# AzureSDK::VirtualMachineRunCommandUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**VirtualMachineRunCommandProperties**](VirtualMachineRunCommandProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineRunCommandUpdate.new(
  tags: null,
  properties: null
)
```


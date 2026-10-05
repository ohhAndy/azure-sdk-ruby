# AzureRest::VirtualMachineRunCommandUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**VirtualMachineRunCommandProperties**](VirtualMachineRunCommandProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineRunCommandUpdate.new(
  tags: null,
  properties: null
)
```


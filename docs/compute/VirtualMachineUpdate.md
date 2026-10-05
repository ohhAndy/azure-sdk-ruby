# AzureRest::VirtualMachineUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **plan** | [**Plan**](Plan.md) |  | [optional] |
| **properties** | [**VirtualMachineProperties**](VirtualMachineProperties.md) |  | [optional] |
| **identity** | [**VirtualMachineIdentity**](VirtualMachineIdentity.md) |  | [optional] |
| **zones** | **Array&lt;String&gt;** | The virtual machine zones. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineUpdate.new(
  tags: null,
  plan: null,
  properties: null,
  identity: null,
  zones: null
)
```


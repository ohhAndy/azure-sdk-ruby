# AzureRest::VirtualMachineScaleSetUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |
| **plan** | [**Plan**](Plan.md) |  | [optional] |
| **properties** | [**VirtualMachineScaleSetUpdateProperties**](VirtualMachineScaleSetUpdateProperties.md) |  | [optional] |
| **identity** | [**VirtualMachineScaleSetIdentity**](VirtualMachineScaleSetIdentity.md) |  | [optional] |
| **zones** | **Array&lt;String&gt;** | The virtual machine scale set zones. | [optional] |
| **placement** | [**Placement**](Placement.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetUpdate.new(
  tags: null,
  sku: null,
  plan: null,
  properties: null,
  identity: null,
  zones: null,
  placement: null
)
```


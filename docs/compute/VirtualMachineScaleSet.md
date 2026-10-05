# AzureRest::VirtualMachineScaleSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName} | [optional][readonly] |
| **name** | **String** | The name of the resource | [optional][readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **location** | **String** | The geo-location where the resource lives |  |
| **sku** | [**Sku**](Sku.md) |  | [optional] |
| **plan** | [**Plan**](Plan.md) |  | [optional] |
| **properties** | [**VirtualMachineScaleSetProperties**](VirtualMachineScaleSetProperties.md) |  | [optional] |
| **identity** | [**VirtualMachineScaleSetIdentity**](VirtualMachineScaleSetIdentity.md) |  | [optional] |
| **zones** | **Array&lt;String&gt;** | The availability zones. | [optional] |
| **extended_location** | [**ExtendedLocation**](ExtendedLocation.md) |  | [optional] |
| **etag** | **String** | Etag is property returned in Create/Update/Get response of the VMSS, so that customer can supply it in the header to ensure optimistic updates | [optional][readonly] |
| **placement** | [**Placement**](Placement.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSet.new(
  id: null,
  name: null,
  type: null,
  system_data: null,
  tags: null,
  location: null,
  sku: null,
  plan: null,
  properties: null,
  identity: null,
  zones: null,
  extended_location: null,
  etag: null,
  placement: null
)
```


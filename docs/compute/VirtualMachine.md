# AzureRest::VirtualMachine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName} | [optional][readonly] |
| **name** | **String** | The name of the resource | [optional][readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **location** | **String** | The geo-location where the resource lives |  |
| **properties** | [**VirtualMachineProperties**](VirtualMachineProperties.md) |  | [optional] |
| **plan** | [**Plan**](Plan.md) |  | [optional] |
| **resources** | [**Array&lt;VirtualMachineExtension&gt;**](VirtualMachineExtension.md) | The virtual machine child extension resources. | [optional][readonly] |
| **identity** | [**VirtualMachineIdentity**](VirtualMachineIdentity.md) |  | [optional] |
| **zones** | **Array&lt;String&gt;** | The availability zones. | [optional] |
| **extended_location** | [**ExtendedLocation**](ExtendedLocation.md) |  | [optional] |
| **managed_by** | **String** | ManagedBy is set to Virtual Machine Scale Set(VMSS) flex ARM resourceID, if the VM is part of the VMSS. This property is used by platform for internal resource group delete optimization. | [optional][readonly] |
| **etag** | **String** | Etag is property returned in Create/Update/Get response of the VM, so that customer can supply it in the header to ensure optimistic updates. | [optional][readonly] |
| **placement** | [**Placement**](Placement.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachine.new(
  id: null,
  name: null,
  type: null,
  system_data: null,
  tags: null,
  location: null,
  properties: null,
  plan: null,
  resources: null,
  identity: null,
  zones: null,
  extended_location: null,
  managed_by: null,
  etag: null,
  placement: null
)
```


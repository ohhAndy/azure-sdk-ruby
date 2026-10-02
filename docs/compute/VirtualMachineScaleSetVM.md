# AzureSDK::VirtualMachineScaleSetVM

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName} | [optional][readonly] |
| **name** | **String** | The name of the resource | [optional][readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **location** | **String** | The geo-location where the resource lives |  |
| **properties** | [**VirtualMachineScaleSetVMProperties**](VirtualMachineScaleSetVMProperties.md) |  | [optional] |
| **instance_id** | **String** | The virtual machine instance ID. | [optional][readonly] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |
| **plan** | [**Plan**](Plan.md) |  | [optional] |
| **resources** | [**Array&lt;VirtualMachineExtension&gt;**](VirtualMachineExtension.md) | The virtual machine child extension resources. | [optional][readonly] |
| **zones** | **Array&lt;String&gt;** | The virtual machine zones. | [optional][readonly] |
| **identity** | [**VirtualMachineIdentity**](VirtualMachineIdentity.md) |  | [optional] |
| **etag** | **String** | Etag is property returned in Update/Get response of the VMSS VM, so that customer can supply it in the header to ensure optimistic updates. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetVM.new(
  id: null,
  name: null,
  type: null,
  system_data: null,
  tags: null,
  location: null,
  properties: null,
  instance_id: null,
  sku: null,
  plan: null,
  resources: null,
  zones: null,
  identity: null,
  etag: null
)
```


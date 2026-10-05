# AzureRest::GenericResourceExpanded

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName} | [optional][readonly] |
| **name** | **String** | The name of the resource | [optional][readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |
| **properties** | **Object** | The resource-specific properties for this resource. | [optional] |
| **plan** | [**Plan**](Plan.md) |  | [optional] |
| **kind** | **String** | The kind of the resource. | [optional] |
| **managed_by** | **String** | ID of the resource that manages this resource. | [optional] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |
| **identity** | [**Identity**](Identity.md) |  | [optional] |
| **location** | **String** | Resource location | [optional] |
| **extended_location** | [**ExtendedLocation**](ExtendedLocation.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **created_time** | **Time** | The created time of the resource. This is only present if requested via the $expand query parameter. | [optional][readonly] |
| **changed_time** | **Time** | The changed time of the resource. This is only present if requested via the $expand query parameter. | [optional][readonly] |
| **provisioning_state** | **String** | The provisioning state of the resource. This is only present if requested via the $expand query parameter. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::GenericResourceExpanded.new(
  id: null,
  name: null,
  type: null,
  system_data: null,
  properties: null,
  plan: null,
  kind: null,
  managed_by: null,
  sku: null,
  identity: null,
  location: null,
  extended_location: null,
  tags: null,
  created_time: null,
  changed_time: null,
  provisioning_state: null
)
```


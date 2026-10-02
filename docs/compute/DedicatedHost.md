# AzureSDK::DedicatedHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName} | [optional][readonly] |
| **name** | **String** | The name of the resource | [optional][readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **location** | **String** | The geo-location where the resource lives |  |
| **properties** | [**DedicatedHostProperties**](DedicatedHostProperties.md) |  | [optional] |
| **sku** | [**Sku**](Sku.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DedicatedHost.new(
  id: null,
  name: null,
  type: null,
  system_data: null,
  tags: null,
  location: null,
  properties: null,
  sku: null
)
```


# AzureRest::Vault

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. E.g. \&quot;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}\&quot; | [optional][readonly] |
| **name** | **String** | The name of the resource | [optional][readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |
| **properties** | [**VaultProperties**](VaultProperties.md) |  |  |
| **location** | **String** | Represents an Azure geography region where supported resource providers live. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Tags assigned to the key vault resource. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Vault.new(
  id: null,
  name: null,
  type: null,
  system_data: null,
  properties: null,
  location: null,
  tags: null
)
```


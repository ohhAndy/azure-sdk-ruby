# AzureSDK::Cluster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName} | [optional][readonly] |
| **name** | **String** | The name of the resource | [optional][readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **location** | **String** | The geo-location where the resource lives |  |
| **etag** | **String** | The ETag for the resource | [optional] |
| **zones** | **Array&lt;String&gt;** | The availability zones. | [optional] |
| **properties** | [**ClusterGetProperties**](ClusterGetProperties.md) |  | [optional] |
| **identity** | [**ClusterIdentity**](ClusterIdentity.md) |  | [optional] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Cluster.new(
  id: null,
  name: null,
  type: null,
  tags: null,
  location: null,
  etag: null,
  zones: null,
  properties: null,
  identity: null,
  system_data: null
)
```


# AzureRest::SnapshotProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_data** | [**CreationData**](CreationData.md) |  | [optional] |
| **snapshot_type** | **String** | The type of a snapshot. The default is NodePool. | [optional][default to &#39;NodePool&#39;] |
| **kubernetes_version** | **String** | The version of Kubernetes. | [optional][readonly] |
| **node_image_version** | **String** | The version of node image. | [optional][readonly] |
| **os_type** | **String** | The operating system type. The default is Linux. | [optional][readonly][default to &#39;Linux&#39;] |
| **os_sku** | [**OSSKU**](OSSKU.md) |  | [optional] |
| **vm_size** | **String** | The size of the VM. | [optional][readonly] |
| **enable_fips** | **Boolean** | Whether to use a FIPS-enabled OS. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SnapshotProperties.new(
  creation_data: null,
  snapshot_type: null,
  kubernetes_version: null,
  node_image_version: null,
  os_type: null,
  os_sku: null,
  vm_size: null,
  enable_fips: null
)
```


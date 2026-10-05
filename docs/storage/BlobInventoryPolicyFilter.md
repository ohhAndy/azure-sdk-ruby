# AzureRest::BlobInventoryPolicyFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix_match** | **Array&lt;String&gt;** | An array of strings with maximum 10 blob prefixes to be included in the inventory. | [optional] |
| **exclude_prefix** | **Array&lt;String&gt;** | An array of strings with maximum 10 blob prefixes to be excluded from the inventory. | [optional] |
| **blob_types** | **Array&lt;String&gt;** | An array of predefined enum values. Valid values include blockBlob, appendBlob, pageBlob. Hns accounts does not support pageBlobs. This field is required when definition.objectType property is set to &#39;Blob&#39;. | [optional] |
| **include_blob_versions** | **Boolean** | Includes blob versions in blob inventory when value is set to true. The definition.schemaFields values &#39;VersionId and IsCurrentVersion&#39; are required if this property is set to true, else they must be excluded. | [optional] |
| **include_snapshots** | **Boolean** | Includes blob snapshots in blob inventory when value is set to true. The definition.schemaFields value &#39;Snapshot&#39; is required if this property is set to true, else it must be excluded. | [optional] |
| **include_deleted** | **Boolean** | For &#39;Container&#39; definition.objectType the definition.schemaFields must include &#39;Deleted, Version, DeletedTime and RemainingRetentionDays&#39;. For &#39;Blob&#39; definition.objectType and HNS enabled storage accounts the definition.schemaFields must include &#39;DeletionId, Deleted, DeletedTime and RemainingRetentionDays&#39; and for Hns disabled accounts the definition.schemaFields must include &#39;Deleted and RemainingRetentionDays&#39;, else it must be excluded. | [optional] |
| **creation_time** | [**BlobInventoryCreationTime**](BlobInventoryCreationTime.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobInventoryPolicyFilter.new(
  prefix_match: null,
  exclude_prefix: null,
  blob_types: null,
  include_blob_versions: null,
  include_snapshots: null,
  include_deleted: null,
  creation_time: null
)
```


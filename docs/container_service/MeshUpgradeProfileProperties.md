# AzureRest::MeshUpgradeProfileProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revision** | **String** | The revision of the mesh release. | [optional] |
| **upgrades** | **Array&lt;String&gt;** | List of revisions available for upgrade of a specific mesh revision | [optional] |
| **compatible_with** | [**Array&lt;CompatibleVersions&gt;**](CompatibleVersions.md) | List of items this revision of service mesh is compatible with, and their associated versions. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MeshUpgradeProfileProperties.new(
  revision: null,
  upgrades: null,
  compatible_with: null
)
```


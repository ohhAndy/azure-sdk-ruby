# AzureSDK::ModelAlias

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The alias name. | [optional] |
| **paths** | [**Array&lt;AliasPath&gt;**](AliasPath.md) | The paths for an alias. | [optional] |
| **type** | [**AliasType**](AliasType.md) |  | [optional] |
| **default_path** | **String** | The default path for an alias. | [optional] |
| **default_pattern** | [**AliasPattern**](AliasPattern.md) |  | [optional] |
| **default_metadata** | [**AliasPathMetadata**](AliasPathMetadata.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ModelAlias.new(
  name: null,
  paths: null,
  type: null,
  default_path: null,
  default_pattern: null,
  default_metadata: null
)
```


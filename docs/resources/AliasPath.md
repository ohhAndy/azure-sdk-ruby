# AzureSDK::AliasPath

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | The path of an alias. | [optional] |
| **api_versions** | **Array&lt;String&gt;** | The API versions. | [optional] |
| **pattern** | [**AliasPattern**](AliasPattern.md) |  | [optional] |
| **metadata** | [**AliasPathMetadata**](AliasPathMetadata.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AliasPath.new(
  path: null,
  api_versions: null,
  pattern: null,
  metadata: null
)
```


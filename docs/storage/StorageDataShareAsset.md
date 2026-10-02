# AzureSDK::StorageDataShareAsset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_path** | **String** | Source Path to be shared. It can be a folder or a blob. The asset path should contain container name followed by path within the container, e.g. /container1/logs/external. |  |
| **display_name** | **String** | Consumer visible name of the original path. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageDataShareAsset.new(
  asset_path: null,
  display_name: null
)
```


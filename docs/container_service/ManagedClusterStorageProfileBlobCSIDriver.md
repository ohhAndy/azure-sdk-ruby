# AzureRest::ManagedClusterStorageProfileBlobCSIDriver

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable AzureBlob CSI Driver. The default value is false. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterStorageProfileBlobCSIDriver.new(
  enabled: null
)
```


# AzureRest::ManagedClusterStorageProfileDiskCSIDriver

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable AzureDisk CSI Driver. The default value is true. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterStorageProfileDiskCSIDriver.new(
  enabled: null
)
```


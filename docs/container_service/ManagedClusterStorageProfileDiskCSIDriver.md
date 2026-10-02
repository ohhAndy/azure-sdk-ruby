# AzureSDK::ManagedClusterStorageProfileDiskCSIDriver

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable AzureDisk CSI Driver. The default value is true. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterStorageProfileDiskCSIDriver.new(
  enabled: null
)
```


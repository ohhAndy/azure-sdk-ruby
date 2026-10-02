# AzureSDK::ManagedClusterAutoUpgradeProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upgrade_channel** | [**UpgradeChannel**](UpgradeChannel.md) |  | [optional] |
| **node_os_upgrade_channel** | [**NodeOSUpgradeChannel**](NodeOSUpgradeChannel.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterAutoUpgradeProfile.new(
  upgrade_channel: null,
  node_os_upgrade_channel: null
)
```


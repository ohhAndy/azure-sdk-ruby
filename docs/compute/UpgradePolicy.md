# AzureRest::UpgradePolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**UpgradeMode**](UpgradeMode.md) |  | [optional] |
| **rolling_upgrade_policy** | [**RollingUpgradePolicy**](RollingUpgradePolicy.md) |  | [optional] |
| **automatic_os_upgrade_policy** | [**AutomaticOSUpgradePolicy**](AutomaticOSUpgradePolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UpgradePolicy.new(
  mode: null,
  rolling_upgrade_policy: null,
  automatic_os_upgrade_policy: null
)
```


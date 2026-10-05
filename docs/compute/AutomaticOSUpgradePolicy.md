# AzureRest::AutomaticOSUpgradePolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_automatic_os_upgrade** | **Boolean** | Indicates whether OS upgrades should automatically be applied to scale set instances in a rolling fashion when a newer version of the OS image becomes available. Default value is false. If this is set to true for Windows based scale sets, [enableAutomaticUpdates](https://docs.microsoft.com/dotnet/api/microsoft.azure.management.compute.models.windowsconfiguration.enableautomaticupdates?view&#x3D;azure-dotnet) is automatically set to false and cannot be set to true. | [optional] |
| **disable_automatic_rollback** | **Boolean** | Whether OS image rollback feature should be disabled. Default value is false. | [optional] |
| **use_rolling_upgrade_policy** | **Boolean** | Indicates whether rolling upgrade policy should be used during Auto OS Upgrade. Default value is false. Auto OS Upgrade will fallback to the default policy if no policy is defined on the VMSS. | [optional] |
| **os_rolling_upgrade_deferral** | **Boolean** | Indicates whether Auto OS Upgrade should undergo deferral. Deferred OS upgrades will send advanced notifications on a per-VM basis that an OS upgrade from rolling upgrades is incoming, via the IMDS tag &#39;Platform.PendingOSUpgrade&#39;. The upgrade then defers until the upgrade is approved via an ApproveRollingUpgrade call. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AutomaticOSUpgradePolicy.new(
  enable_automatic_os_upgrade: null,
  disable_automatic_rollback: null,
  use_rolling_upgrade_policy: null,
  os_rolling_upgrade_deferral: null
)
```


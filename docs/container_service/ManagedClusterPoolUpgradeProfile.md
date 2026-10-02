# AzureSDK::ManagedClusterPoolUpgradeProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kubernetes_version** | **String** | The Kubernetes version (major.minor.patch). |  |
| **name** | **String** | The Agent Pool name. | [optional] |
| **os_type** | **String** | The operating system type. The default is Linux. | [default to &#39;Linux&#39;] |
| **upgrades** | [**Array&lt;ManagedClusterPoolUpgradeProfileUpgradesItem&gt;**](ManagedClusterPoolUpgradeProfileUpgradesItem.md) | List of orchestrator types and versions available for upgrade. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterPoolUpgradeProfile.new(
  kubernetes_version: null,
  name: null,
  os_type: null,
  upgrades: null
)
```


# AzureSDK::AgentPoolUpgradeProfileProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kubernetes_version** | **String** | The Kubernetes version (major.minor.patch). |  |
| **os_type** | **String** | The operating system type. The default is Linux. | [default to &#39;Linux&#39;] |
| **upgrades** | [**Array&lt;AgentPoolUpgradeProfilePropertiesUpgradesItem&gt;**](AgentPoolUpgradeProfilePropertiesUpgradesItem.md) | List of orchestrator types and versions available for upgrade. | [optional] |
| **recently_used_versions** | [**Array&lt;AgentPoolRecentlyUsedVersion&gt;**](AgentPoolRecentlyUsedVersion.md) | List of historical good versions for rollback operations. | [optional][readonly] |
| **latest_node_image_version** | **String** | The latest AKS supported node image version. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AgentPoolUpgradeProfileProperties.new(
  kubernetes_version: null,
  os_type: null,
  upgrades: null,
  recently_used_versions: null,
  latest_node_image_version: null
)
```


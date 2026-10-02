# AzureSDK::ManagedClusterPoolUpgradeProfileUpgradesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kubernetes_version** | **String** | The Kubernetes version (major.minor.patch). | [optional] |
| **is_preview** | **Boolean** | Whether the Kubernetes version is currently in preview. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterPoolUpgradeProfileUpgradesItem.new(
  kubernetes_version: null,
  is_preview: null
)
```


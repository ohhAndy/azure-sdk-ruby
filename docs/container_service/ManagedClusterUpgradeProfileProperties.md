# AzureRest::ManagedClusterUpgradeProfileProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **control_plane_profile** | [**ManagedClusterPoolUpgradeProfile**](ManagedClusterPoolUpgradeProfile.md) |  |  |
| **agent_pool_profiles** | [**Array&lt;ManagedClusterPoolUpgradeProfile&gt;**](ManagedClusterPoolUpgradeProfile.md) | The list of available upgrade versions for agent pools. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterUpgradeProfileProperties.new(
  control_plane_profile: null,
  agent_pool_profiles: null
)
```


# AzureSDK::ManagedClusterWorkloadAutoScalerProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keda** | [**ManagedClusterWorkloadAutoScalerProfileKeda**](ManagedClusterWorkloadAutoScalerProfileKeda.md) |  | [optional] |
| **vertical_pod_autoscaler** | [**ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler**](ManagedClusterWorkloadAutoScalerProfileVerticalPodAutoscaler.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterWorkloadAutoScalerProfile.new(
  keda: null,
  vertical_pod_autoscaler: null
)
```


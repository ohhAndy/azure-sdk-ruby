# AzureRest::ManagedClusterPodIdentityException

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the pod identity exception. |  |
| **namespace** | **String** | The namespace of the pod identity exception. |  |
| **pod_labels** | **Hash&lt;String, String&gt;** | The pod labels to match. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterPodIdentityException.new(
  name: null,
  namespace: null,
  pod_labels: null
)
```


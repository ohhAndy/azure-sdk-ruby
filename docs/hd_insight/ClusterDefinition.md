# AzureSDK::ClusterDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blueprint** | **String** | The link to the blueprint. | [optional] |
| **kind** | **String** | The type of cluster. | [optional] |
| **component_version** | **Hash&lt;String, String&gt;** | The versions of different services in the cluster. | [optional] |
| **configurations** | **Object** | The cluster configurations. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ClusterDefinition.new(
  blueprint: null,
  kind: null,
  component_version: null,
  configurations: null
)
```


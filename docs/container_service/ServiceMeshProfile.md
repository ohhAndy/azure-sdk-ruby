# AzureRest::ServiceMeshProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**ServiceMeshMode**](ServiceMeshMode.md) |  |  |
| **istio** | [**IstioServiceMesh**](IstioServiceMesh.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServiceMeshProfile.new(
  mode: null,
  istio: null
)
```


# AzureSDK::ServiceMeshProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**ServiceMeshMode**](ServiceMeshMode.md) |  |  |
| **istio** | [**IstioServiceMesh**](IstioServiceMesh.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceMeshProfile.new(
  mode: null,
  istio: null
)
```


# AzureSDK::IstioServiceMesh

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **components** | [**IstioComponents**](IstioComponents.md) |  | [optional] |
| **certificate_authority** | [**IstioCertificateAuthority**](IstioCertificateAuthority.md) |  | [optional] |
| **revisions** | **Array&lt;String&gt;** | The list of revisions of the Istio control plane. When an upgrade is not in progress, this holds one value. When canary upgrade is in progress, this can only hold two consecutive values. For more information, see: https://learn.microsoft.com/en-us/azure/aks/istio-upgrade | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IstioServiceMesh.new(
  components: null,
  certificate_authority: null,
  revisions: null
)
```


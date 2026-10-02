# AzureSDK::ResourceQuota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cpu_request** | **String** | CPU request of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details. | [optional] |
| **cpu_limit** | **String** | CPU limit of the namespace in one-thousandth CPU form. See [CPU resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu) for more details. | [optional] |
| **memory_request** | **String** | Memory request of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details. | [optional] |
| **memory_limit** | **String** | Memory limit of the namespace in the power-of-two equivalents form: Ei, Pi, Ti, Gi, Mi, Ki. See [Memory resource units](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory) for more details. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResourceQuota.new(
  cpu_request: null,
  cpu_limit: null,
  memory_request: null,
  memory_limit: null
)
```


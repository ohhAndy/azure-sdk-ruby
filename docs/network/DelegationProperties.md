# AzureSDK::DelegationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | **String** | The service name to which the NVA is delegated. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DelegationProperties.new(
  service_name: null,
  provisioning_state: null
)
```


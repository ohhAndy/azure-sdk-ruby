# AzureSDK::ManagedHSMSecurityDomainProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activation_status** | [**ActivationStatus**](ActivationStatus.md) |  | [optional] |
| **activation_status_message** | **String** | Activation Status Message. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedHSMSecurityDomainProperties.new(
  activation_status: null,
  activation_status_message: null
)
```


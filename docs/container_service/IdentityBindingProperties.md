# AzureSDK::IdentityBindingProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **managed_identity** | [**IdentityBindingManagedIdentityProfile**](IdentityBindingManagedIdentityProfile.md) |  |  |
| **oidc_issuer** | [**IdentityBindingOidcIssuerProfile**](IdentityBindingOidcIssuerProfile.md) |  | [optional] |
| **provisioning_state** | [**IdentityBindingProvisioningState**](IdentityBindingProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IdentityBindingProperties.new(
  managed_identity: null,
  oidc_issuer: null,
  provisioning_state: null
)
```


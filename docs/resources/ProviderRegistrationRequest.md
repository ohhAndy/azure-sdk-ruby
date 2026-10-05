# AzureRest::ProviderRegistrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **third_party_provider_consent** | [**ProviderConsentDefinition**](ProviderConsentDefinition.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ProviderRegistrationRequest.new(
  third_party_provider_consent: null
)
```


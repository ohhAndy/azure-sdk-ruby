# AzureSDK::Provider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The provider ID. | [optional][readonly] |
| **namespace** | **String** | The namespace of the resource provider. | [optional] |
| **registration_state** | **String** | The registration state of the resource provider. | [optional][readonly] |
| **registration_policy** | **String** | The registration policy of the resource provider. | [optional][readonly] |
| **resource_types** | [**Array&lt;ProviderResourceType&gt;**](ProviderResourceType.md) | The collection of provider resource types. | [optional][readonly] |
| **provider_authorization_consent_state** | [**ProviderAuthorizationConsentState**](ProviderAuthorizationConsentState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Provider.new(
  id: null,
  namespace: null,
  registration_state: null,
  registration_policy: null,
  resource_types: null,
  provider_authorization_consent_state: null
)
```


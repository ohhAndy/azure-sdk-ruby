# AzureSDK::ContextCacheProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_kind** | [**ContextCacheAccountKind**](ContextCacheAccountKind.md) |  |  |
| **description** | **String** | Account description. | [optional] |
| **provisioning_state** | [**ContextCacheProvisioningState**](ContextCacheProvisioningState.md) |  | [optional] |
| **encryption** | [**AzureResourceManagerCommonTypesEncryption**](AzureResourceManagerCommonTypesEncryption.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContextCacheProperties.new(
  account_kind: null,
  description: null,
  provisioning_state: null,
  encryption: null
)
```


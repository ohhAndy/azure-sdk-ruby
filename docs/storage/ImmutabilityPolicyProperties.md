# AzureSDK::ImmutabilityPolicyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | [**ImmutabilityPolicyProperty**](ImmutabilityPolicyProperty.md) |  | [optional] |
| **etag** | **String** | ImmutabilityPolicy Etag. | [optional][readonly] |
| **update_history** | [**Array&lt;UpdateHistoryProperty&gt;**](UpdateHistoryProperty.md) | The ImmutabilityPolicy update history of the blob container. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ImmutabilityPolicyProperties.new(
  properties: null,
  etag: null,
  update_history: null
)
```


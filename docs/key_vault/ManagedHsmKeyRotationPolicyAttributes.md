# AzureSDK::ManagedHsmKeyRotationPolicyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Integer** | Creation time in seconds since 1970-01-01T00:00:00Z. | [optional][readonly] |
| **updated** | **Integer** | Last updated time in seconds since 1970-01-01T00:00:00Z. | [optional][readonly] |
| **expiry_time** | **String** | The expiration time for the new key version. It should be in ISO8601 format. Eg: &#39;P90D&#39;, &#39;P1Y&#39;. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedHsmKeyRotationPolicyAttributes.new(
  created: null,
  updated: null,
  expiry_time: null
)
```


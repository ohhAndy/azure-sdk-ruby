# AzureSDK::Trigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_after_create** | **String** | The time duration after key creation to rotate the key. It only applies to rotate. It will be in ISO 8601 duration format. Eg: &#39;P90D&#39;, &#39;P1Y&#39;. | [optional] |
| **time_before_expiry** | **String** | The time duration before key expiring to rotate or notify. It will be in ISO 8601 duration format. Eg: &#39;P90D&#39;, &#39;P1Y&#39;. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Trigger.new(
  time_after_create: null,
  time_before_expiry: null
)
```


# AzureSDK::ChangeFeed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates whether change feed event logging is enabled for the Blob service. | [optional] |
| **retention_in_days** | **Integer** | Indicates the duration of changeFeed retention in days. Minimum value is 1 day and maximum value is 146000 days (400 years). A null value indicates an infinite retention of the change feed. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ChangeFeed.new(
  enabled: null,
  retention_in_days: null
)
```


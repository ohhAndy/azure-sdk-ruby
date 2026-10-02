# AzureSDK::RetentionPolicyParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** | Number of days to retain flow log records. | [optional][default to 0] |
| **enabled** | **Boolean** | Flag to enable/disable retention. | [optional][default to false] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RetentionPolicyParameters.new(
  days: null,
  enabled: null
)
```


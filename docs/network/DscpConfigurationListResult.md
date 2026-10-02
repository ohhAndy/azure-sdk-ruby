# AzureSDK::DscpConfigurationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;DscpConfiguration&gt;**](DscpConfiguration.md) | The DscpConfiguration items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DscpConfigurationListResult.new(
  value: null,
  next_link: null
)
```


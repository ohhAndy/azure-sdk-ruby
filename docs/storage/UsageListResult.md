# AzureSDK::UsageListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Usage&gt;**](Usage.md) | Gets or sets the list of Storage Resource Usages. | [optional] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::UsageListResult.new(
  value: null,
  next_link: null
)
```


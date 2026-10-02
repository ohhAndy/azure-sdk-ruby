# AzureSDK::MachineListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Machine&gt;**](Machine.md) | The Machine items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MachineListResult.new(
  value: null,
  next_link: null
)
```


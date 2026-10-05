# AzureRest::NetworkInterfaceListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;NetworkInterface&gt;**](NetworkInterface.md) | The NetworkInterface items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkInterfaceListResult.new(
  value: null,
  next_link: null
)
```


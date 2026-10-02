# AzureSDK::NetworkInterfaceTapConfigurationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;NetworkInterfaceTapConfiguration&gt;**](NetworkInterfaceTapConfiguration.md) | The NetworkInterfaceTapConfiguration items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkInterfaceTapConfigurationListResult.new(
  value: null,
  next_link: null
)
```


# AzureRest::NetworkInterfaceIPConfigurationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;NetworkInterfaceIPConfiguration&gt;**](NetworkInterfaceIPConfiguration.md) | The NetworkInterfaceIPConfiguration items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkInterfaceIPConfigurationListResult.new(
  value: null,
  next_link: null
)
```


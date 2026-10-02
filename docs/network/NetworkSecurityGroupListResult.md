# AzureSDK::NetworkSecurityGroupListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;NetworkSecurityGroup&gt;**](NetworkSecurityGroup.md) | The NetworkSecurityGroup items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkSecurityGroupListResult.new(
  value: null,
  next_link: null
)
```


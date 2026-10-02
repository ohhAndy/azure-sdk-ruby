# AzureSDK::PrivateDnsZoneGroupListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PrivateDnsZoneGroup&gt;**](PrivateDnsZoneGroup.md) | The PrivateDnsZoneGroup items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateDnsZoneGroupListResult.new(
  value: null,
  next_link: null
)
```


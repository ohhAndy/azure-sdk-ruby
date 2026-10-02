# AzureSDK::AvailableServiceAliasesResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AvailableServiceAlias&gt;**](AvailableServiceAlias.md) | The AvailableServiceAlias items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AvailableServiceAliasesResult.new(
  value: null,
  next_link: null
)
```


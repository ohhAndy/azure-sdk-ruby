# AzureRest::PublicIPAddressListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PublicIPAddress&gt;**](PublicIPAddress.md) | The PublicIPAddress items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PublicIPAddressListResult.new(
  value: null,
  next_link: null
)
```


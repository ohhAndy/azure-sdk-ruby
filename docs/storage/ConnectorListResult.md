# AzureRest::ConnectorListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Connector&gt;**](Connector.md) | The Connector items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ConnectorListResult.new(
  value: null,
  next_link: null
)
```


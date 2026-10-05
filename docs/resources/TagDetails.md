# AzureRest::TagDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The tag name ID. | [optional][readonly] |
| **tag_name** | **String** | The tag name. | [optional] |
| **count** | [**TagCount**](TagCount.md) |  | [optional] |
| **values** | [**Array&lt;TagValue&gt;**](TagValue.md) | The list of tag values. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TagDetails.new(
  id: null,
  tag_name: null,
  count: null,
  values: null
)
```


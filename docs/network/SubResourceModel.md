# AzureRest::SubResourceModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Name of the resource. | [optional] |
| **type** | **String** | Resource type. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SubResourceModel.new(
  id: null,
  name: null,
  type: null
)
```


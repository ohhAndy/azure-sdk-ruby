# AzureRest::ErrorAdditionalInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The additional info type. | [optional][readonly] |
| **info** | **Object** | The additional info. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ErrorAdditionalInfo.new(
  type: null,
  info: null
)
```


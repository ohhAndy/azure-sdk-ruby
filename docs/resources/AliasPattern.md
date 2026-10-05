# AzureRest::AliasPattern

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phrase** | **String** | The alias pattern phrase. | [optional] |
| **variable** | **String** | The alias pattern variable. | [optional] |
| **type** | [**AliasPatternType**](AliasPatternType.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AliasPattern.new(
  phrase: null,
  variable: null,
  type: null
)
```


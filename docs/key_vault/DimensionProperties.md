# AzureRest::DimensionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of dimension. | [optional] |
| **display_name** | **String** | Display name of dimension. | [optional] |
| **to_be_exported_for_shoebox** | **Boolean** | Property to specify whether the dimension should be exported for Shoebox. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DimensionProperties.new(
  name: null,
  display_name: null,
  to_be_exported_for_shoebox: null
)
```


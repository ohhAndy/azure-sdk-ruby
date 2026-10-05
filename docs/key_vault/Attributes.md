# AzureRest::Attributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Determines whether the object is enabled. | [optional] |
| **nbf** | **Integer** | Not before date in seconds since 1970-01-01T00:00:00Z. | [optional] |
| **exp** | **Integer** | Expiry date in seconds since 1970-01-01T00:00:00Z. | [optional] |
| **created** | **Integer** | Creation time in seconds since 1970-01-01T00:00:00Z. | [optional][readonly] |
| **updated** | **Integer** | Last updated time in seconds since 1970-01-01T00:00:00Z. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Attributes.new(
  enabled: null,
  nbf: null,
  exp: null,
  created: null,
  updated: null
)
```


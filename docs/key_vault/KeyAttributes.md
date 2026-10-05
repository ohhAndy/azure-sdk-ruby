# AzureRest::KeyAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Determines whether or not the object is enabled. | [optional] |
| **nbf** | **Integer** | Not before date in seconds since 1970-01-01T00:00:00Z. | [optional] |
| **exp** | **Integer** | Expiry date in seconds since 1970-01-01T00:00:00Z. | [optional] |
| **created** | **Integer** | Creation time in seconds since 1970-01-01T00:00:00Z. | [optional][readonly] |
| **updated** | **Integer** | Last updated time in seconds since 1970-01-01T00:00:00Z. | [optional][readonly] |
| **recovery_level** | [**DeletionRecoveryLevel**](DeletionRecoveryLevel.md) |  | [optional] |
| **exportable** | **Boolean** | Indicates if the private key can be exported. | [optional][default to false] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::KeyAttributes.new(
  enabled: null,
  nbf: null,
  exp: null,
  created: null,
  updated: null,
  recovery_level: null,
  exportable: null
)
```


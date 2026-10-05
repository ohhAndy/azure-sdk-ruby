# AzureRest::EncryptionInTransitProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_encryption_in_transit_enabled** | **Boolean** | Indicates whether or not inter cluster node communication is encrypted in transit. | [optional][default to false] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EncryptionInTransitProperties.new(
  is_encryption_in_transit_enabled: null
)
```


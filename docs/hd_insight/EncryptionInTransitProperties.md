# AzureSDK::EncryptionInTransitProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_encryption_in_transit_enabled** | **Boolean** | Indicates whether or not inter cluster node communication is encrypted in transit. | [optional][default to false] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::EncryptionInTransitProperties.new(
  is_encryption_in_transit_enabled: null
)
```


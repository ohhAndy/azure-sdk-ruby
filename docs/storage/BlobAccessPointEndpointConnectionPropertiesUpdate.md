# AzureRest::BlobAccessPointEndpointConnectionPropertiesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tls_verification** | [**BlobAccessPointTlsVerification**](BlobAccessPointTlsVerification.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobAccessPointEndpointConnectionPropertiesUpdate.new(
  tls_verification: null
)
```


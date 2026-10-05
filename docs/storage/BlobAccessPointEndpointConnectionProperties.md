# AzureRest::BlobAccessPointEndpointConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint** | **String** | The backing endpoint, including its protocol, host, optional port, and optional path. |  |
| **tls_verification** | [**BlobAccessPointTlsVerification**](BlobAccessPointTlsVerification.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobAccessPointEndpointConnectionProperties.new(
  endpoint: null,
  tls_verification: null
)
```


# AzureSDK::BlobAccessPointAccessKeyAuthPropertiesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key_id** | **String** | The access key ID. | [optional] |
| **secret_access_key** | **String** | The secret access key. This value is never returned by read or list operations. | [optional] |
| **signing_region** | **String** | The region used by the request-signing algorithm. Defaults to &#39;us-east-1&#39; when not specified. | [optional] |
| **host_override** | **String** | The host used when computing request signatures. The endpoint host is used by default. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BlobAccessPointAccessKeyAuthPropertiesUpdate.new(
  access_key_id: null,
  secret_access_key: null,
  signing_region: null,
  host_override: null
)
```


# AzureSDK::ServiceSasParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **canonicalized_resource** | **String** | The canonical path to the signed resource. |  |
| **signed_resource** | [**SignedResource**](SignedResource.md) |  | [optional] |
| **signed_permission** | [**Permissions**](Permissions.md) |  | [optional] |
| **signed_ip** | **String** | An IP address or a range of IP addresses from which to accept requests. | [optional] |
| **signed_protocol** | [**HttpProtocol**](HttpProtocol.md) |  | [optional] |
| **signed_start** | **Time** | The time at which the SAS becomes valid. | [optional] |
| **signed_expiry** | **Time** | The time at which the shared access signature becomes invalid. | [optional] |
| **signed_identifier** | **String** | A unique value up to 64 characters in length that correlates to an access policy specified for the container, queue, or table. | [optional] |
| **start_pk** | **String** | The start of partition key. | [optional] |
| **end_pk** | **String** | The end of partition key. | [optional] |
| **start_rk** | **String** | The start of row key. | [optional] |
| **end_rk** | **String** | The end of row key. | [optional] |
| **key_to_sign** | **String** | The key to sign the account SAS token with. | [optional] |
| **rscc** | **String** | The response header override for cache control. | [optional] |
| **rscd** | **String** | The response header override for content disposition. | [optional] |
| **rsce** | **String** | The response header override for content encoding. | [optional] |
| **rscl** | **String** | The response header override for content language. | [optional] |
| **rsct** | **String** | The response header override for content type. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceSasParameters.new(
  canonicalized_resource: null,
  signed_resource: null,
  signed_permission: null,
  signed_ip: null,
  signed_protocol: null,
  signed_start: null,
  signed_expiry: null,
  signed_identifier: null,
  start_pk: null,
  end_pk: null,
  start_rk: null,
  end_rk: null,
  key_to_sign: null,
  rscc: null,
  rscd: null,
  rsce: null,
  rscl: null,
  rsct: null
)
```


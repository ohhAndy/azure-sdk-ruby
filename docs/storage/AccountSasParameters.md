# AzureSDK::AccountSasParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signed_services** | [**Services**](Services.md) |  |  |
| **signed_resource_types** | [**SignedResourceTypes**](SignedResourceTypes.md) |  |  |
| **signed_permission** | [**Permissions**](Permissions.md) |  |  |
| **signed_ip** | **String** | An IP address or a range of IP addresses from which to accept requests. | [optional] |
| **signed_protocol** | [**HttpProtocol**](HttpProtocol.md) |  | [optional] |
| **signed_start** | **Time** | The time at which the SAS becomes valid. | [optional] |
| **signed_expiry** | **Time** | The time at which the shared access signature becomes invalid. |  |
| **key_to_sign** | **String** | The key to sign the account SAS token with. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AccountSasParameters.new(
  signed_services: null,
  signed_resource_types: null,
  signed_permission: null,
  signed_ip: null,
  signed_protocol: null,
  signed_start: null,
  signed_expiry: null,
  key_to_sign: null
)
```


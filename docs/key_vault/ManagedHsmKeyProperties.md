# AzureSDK::ManagedHsmKeyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**ManagedHsmKeyAttributes**](ManagedHsmKeyAttributes.md) |  | [optional] |
| **kty** | [**JsonWebKeyType**](JsonWebKeyType.md) |  | [optional] |
| **key_ops** | [**Array&lt;JsonWebKeyOperation&gt;**](JsonWebKeyOperation.md) |  | [optional] |
| **key_size** | **Integer** | The key size in bits. For example: 2048, 3072, or 4096 for RSA. Default for RSA and RSA-HSM keys is 2048. Exception made for bring your own key (BYOK), key exchange keys default to 4096. | [optional] |
| **curve_name** | [**JsonWebKeyCurveName**](JsonWebKeyCurveName.md) |  | [optional] |
| **key_uri** | **String** | The URI to retrieve the current version of the key. | [optional][readonly] |
| **key_uri_with_version** | **String** | The URI to retrieve the specific version of the key. | [optional][readonly] |
| **rotation_policy** | [**ManagedHsmRotationPolicy**](ManagedHsmRotationPolicy.md) |  | [optional] |
| **release_policy** | [**ManagedHsmKeyReleasePolicy**](ManagedHsmKeyReleasePolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedHsmKeyProperties.new(
  attributes: null,
  kty: null,
  key_ops: null,
  key_size: null,
  curve_name: null,
  key_uri: null,
  key_uri_with_version: null,
  rotation_policy: null,
  release_policy: null
)
```


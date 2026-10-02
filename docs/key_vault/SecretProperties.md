# AzureSDK::SecretProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The value of the secret. NOTE: &#39;value&#39; will never be returned from the service, as APIs using this model are is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets. | [optional] |
| **content_type** | **String** | The content type of the secret. | [optional] |
| **attributes** | [**SecretAttributes**](SecretAttributes.md) |  | [optional] |
| **secret_uri** | **String** | The URI to retrieve the current version of the secret. | [optional][readonly] |
| **secret_uri_with_version** | **String** | The URI to retrieve the specific version of the secret. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SecretProperties.new(
  value: null,
  content_type: null,
  attributes: null,
  secret_uri: null,
  secret_uri_with_version: null
)
```


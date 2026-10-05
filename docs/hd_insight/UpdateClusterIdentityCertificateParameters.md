# AzureRest::UpdateClusterIdentityCertificateParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_id** | **String** | The application id. | [optional] |
| **certificate** | **String** | The certificate in base64 encoded format. | [optional] |
| **certificate_password** | **String** | The password of the certificate. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UpdateClusterIdentityCertificateParameters.new(
  application_id: null,
  certificate: null,
  certificate_password: null
)
```


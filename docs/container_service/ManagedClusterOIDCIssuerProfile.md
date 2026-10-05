# AzureRest::ManagedClusterOIDCIssuerProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issuer_url** | **String** | The OIDC issuer url of the Managed Cluster. | [optional][readonly] |
| **enabled** | **Boolean** | Whether the OIDC issuer is enabled. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterOIDCIssuerProfile.new(
  issuer_url: null,
  enabled: null
)
```


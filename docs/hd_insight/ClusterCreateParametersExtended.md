# AzureRest::ClusterCreateParametersExtended

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The location of the cluster. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | The resource tags. | [optional] |
| **zones** | **Array&lt;String&gt;** | The availability zones. | [optional] |
| **properties** | [**ClusterCreateProperties**](ClusterCreateProperties.md) |  | [optional] |
| **identity** | [**ClusterIdentity**](ClusterIdentity.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ClusterCreateParametersExtended.new(
  location: null,
  tags: null,
  zones: null,
  properties: null,
  identity: null
)
```


# AzureRest::ManagedClusterBootstrapProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **artifact_source** | **String** | The artifact source. The source where the artifacts are downloaded from. | [optional][default to &#39;Direct&#39;] |
| **container_registry_id** | **String** | The resource Id of Azure Container Registry. The registry must have private network access, premium SKU and zone redundancy. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterBootstrapProfile.new(
  artifact_source: null,
  container_registry_id: null
)
```


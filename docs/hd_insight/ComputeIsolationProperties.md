# AzureRest::ComputeIsolationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_compute_isolation** | **Boolean** | The flag indicates whether enable compute isolation or not. | [optional][default to false] |
| **host_sku** | **String** | The host sku. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ComputeIsolationProperties.new(
  enable_compute_isolation: null,
  host_sku: null
)
```


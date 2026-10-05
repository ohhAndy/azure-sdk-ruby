# AzureRest::SpotRestorePolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Enables the Spot-Try-Restore feature where evicted VMSS SPOT instances will be tried to be restored opportunistically based on capacity availability and pricing constraints | [optional] |
| **restore_timeout** | **String** | Timeout value expressed as an ISO 8601 time duration after which the platform will not try to restore the VMSS SPOT instances | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SpotRestorePolicy.new(
  enabled: null,
  restore_timeout: null
)
```


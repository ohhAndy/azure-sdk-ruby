# AzureRest::PartnerManagedResourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The partner managed resource id. | [optional][readonly] |
| **internal_load_balancer_id** | **String** | The partner managed ILB resource id | [optional][readonly] |
| **standard_load_balancer_id** | **String** | The partner managed SLB resource id | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PartnerManagedResourceProperties.new(
  id: null,
  internal_load_balancer_id: null,
  standard_load_balancer_id: null
)
```


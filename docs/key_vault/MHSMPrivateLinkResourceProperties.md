# AzureRest::MHSMPrivateLinkResourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group identifier of private link resource. | [optional][readonly] |
| **required_members** | **Array&lt;String&gt;** | Required member names of private link resource. | [optional][readonly] |
| **required_zone_names** | **Array&lt;String&gt;** | Required DNS zone names of the the private link resource. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MHSMPrivateLinkResourceProperties.new(
  group_id: null,
  required_members: null,
  required_zone_names: null
)
```


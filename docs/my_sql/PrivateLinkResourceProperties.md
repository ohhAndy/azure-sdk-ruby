# AzureRest::PrivateLinkResourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The private link resource group id. | [optional][readonly] |
| **required_members** | **Array&lt;String&gt;** | The private link resource required member names. | [optional][readonly] |
| **required_zone_names** | **Array&lt;String&gt;** | The private link resource private link DNS zone name. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkResourceProperties.new(
  group_id: null,
  required_members: null,
  required_zone_names: null
)
```


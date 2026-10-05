# AzureRest::IpTag2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_tag_type** | **String** | The IP tag type. Example: FirstPartyUsage. | [optional] |
| **tag** | **String** | The value of the IP tag associated with the public IP. Example: SQL. | [optional] |
| **first_party_service_tag_id** | **String** | The resource ID of the first party service tag associated with the IP tag. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IpTag2.new(
  ip_tag_type: null,
  tag: null,
  first_party_service_tag_id: null
)
```


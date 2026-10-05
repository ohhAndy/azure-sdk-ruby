# AzureRest::IPTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_tag_type** | **String** | The IP tag type. Example: RoutingPreference. | [optional] |
| **tag** | **String** | The value of the IP tag associated with the public IP. Example: Internet. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IPTag.new(
  ip_tag_type: null,
  tag: null
)
```


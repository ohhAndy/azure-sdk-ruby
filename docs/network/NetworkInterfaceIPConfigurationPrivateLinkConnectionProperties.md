# AzureRest::NetworkInterfaceIPConfigurationPrivateLinkConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The group ID for current private link connection. | [optional][readonly] |
| **required_member_name** | **String** | The required member name for current private link connection. | [optional][readonly] |
| **fqdns** | **Array&lt;String&gt;** | List of FQDNs for current private link connection. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkInterfaceIPConfigurationPrivateLinkConnectionProperties.new(
  group_id: null,
  required_member_name: null,
  fqdns: null
)
```


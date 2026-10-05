# AzureRest::MoveIpConfigurationsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **move_ip_configuration_items** | [**Array&lt;MoveIpConfigurationItem&gt;**](MoveIpConfigurationItem.md) | A list of IP configuration move items. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MoveIpConfigurationsRequest.new(
  move_ip_configuration_items: null
)
```


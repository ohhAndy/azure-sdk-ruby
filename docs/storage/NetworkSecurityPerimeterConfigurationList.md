# AzureRest::NetworkSecurityPerimeterConfigurationList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;NetworkSecurityPerimeterConfiguration&gt;**](NetworkSecurityPerimeterConfiguration.md) | The NetworkSecurityPerimeterConfiguration items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkSecurityPerimeterConfigurationList.new(
  value: null,
  next_link: null
)
```


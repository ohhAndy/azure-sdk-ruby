# AzureRest::DelegatedSubnetUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet_name** | **String** | name of the subnet | [optional][readonly] |
| **usage** | **Integer** | Number of used delegated subnets | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DelegatedSubnetUsage.new(
  subnet_name: null,
  usage: null
)
```


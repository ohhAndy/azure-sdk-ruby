# AzureSDK::DelegatedSubnetUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet_name** | **String** | name of the subnet | [optional][readonly] |
| **usage** | **Integer** | Number of used delegated subnets | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DelegatedSubnetUsage.new(
  subnet_name: null,
  usage: null
)
```


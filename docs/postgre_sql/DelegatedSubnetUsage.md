# AzureSDK::DelegatedSubnetUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet_name** | **String** | Name of the delegated subnet for which IP addresses are in use | [optional][readonly] |
| **usage** | **Integer** | Number of IP addresses used by the delegated subnet | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DelegatedSubnetUsage.new(
  subnet_name: null,
  usage: null
)
```


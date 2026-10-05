# AzureRest::VirtualApplianceAdditionalNicProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of additional nic | [optional] |
| **has_public_ip** | **Boolean** | Flag (true or false) for Intent for Public Ip on additional nic | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualApplianceAdditionalNicProperties.new(
  name: null,
  has_public_ip: null
)
```


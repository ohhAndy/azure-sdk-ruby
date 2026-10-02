# AzureSDK::ServiceTagInformationPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_number** | **String** | The iteration number of service tag. | [optional][readonly] |
| **region** | **String** | The region of service tag. | [optional][readonly] |
| **system_service** | **String** | The name of system service. | [optional][readonly] |
| **address_prefixes** | **Array&lt;String&gt;** | The list of IP address prefixes. | [optional][readonly] |
| **state** | **String** | The state of the service tag. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceTagInformationPropertiesFormat.new(
  change_number: null,
  region: null,
  system_service: null,
  address_prefixes: null,
  state: null
)
```


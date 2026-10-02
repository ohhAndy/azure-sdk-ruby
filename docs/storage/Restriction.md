# AzureSDK::Restriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of restrictions. As of now only possible value for this is location. | [optional][readonly] |
| **values** | **Array&lt;String&gt;** | The value of restrictions. If the restriction type is set to location. This would be different locations where the SKU is restricted. | [optional][readonly] |
| **reason_code** | [**ReasonCode**](ReasonCode.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Restriction.new(
  type: null,
  values: null,
  reason_code: null
)
```


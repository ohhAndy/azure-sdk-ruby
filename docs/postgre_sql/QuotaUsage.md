# AzureSDK::QuotaUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**NameProperty**](NameProperty.md) |  | [optional] |
| **limit** | **Integer** | Quota limit | [optional] |
| **unit** | **String** | Quota unit | [optional][default to &#39;Count&#39;] |
| **current_value** | **Integer** | Current Quota usage value | [optional] |
| **id** | **String** | Fully qualified ARM resource Id | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::QuotaUsage.new(
  name: null,
  limit: null,
  unit: null,
  current_value: null,
  id: null
)
```


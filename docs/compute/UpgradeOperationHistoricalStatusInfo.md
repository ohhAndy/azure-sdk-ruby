# AzureRest::UpgradeOperationHistoricalStatusInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | [**UpgradeOperationHistoricalStatusInfoProperties**](UpgradeOperationHistoricalStatusInfoProperties.md) |  | [optional] |
| **type** | **String** | Resource type | [optional][readonly] |
| **location** | **String** | Resource location | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UpgradeOperationHistoricalStatusInfo.new(
  properties: null,
  type: null,
  location: null
)
```


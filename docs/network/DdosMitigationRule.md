# AzureRest::DdosMitigationRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource ID of the DDoS mitigation rule. | [optional][readonly] |
| **name** | **String** | The name of the DDoS mitigation rule. |  |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **type** | **String** | The resource type. | [optional][readonly] |
| **properties** | [**DdosMitigationRulePropertiesFormat**](DdosMitigationRulePropertiesFormat.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosMitigationRule.new(
  id: null,
  name: null,
  etag: null,
  type: null,
  properties: null
)
```


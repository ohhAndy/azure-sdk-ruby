# AzureSDK::DdosDetectionRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource ID of the DDoS detection rule. | [optional][readonly] |
| **name** | **String** | The name of the DDoS detection rule. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **type** | **String** | The resource type. | [optional][readonly] |
| **properties** | [**DdosDetectionRulePropertiesFormat**](DdosDetectionRulePropertiesFormat.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DdosDetectionRule.new(
  id: null,
  name: null,
  etag: null,
  type: null,
  properties: null
)
```


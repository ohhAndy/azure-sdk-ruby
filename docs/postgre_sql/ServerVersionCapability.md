# AzureRest::ServerVersionCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**CapabilityStatus**](CapabilityStatus.md) |  | [optional] |
| **reason** | **String** | Reason for the capability not being available. | [optional][readonly] |
| **name** | **String** | Major version of PostgreSQL database engine. | [optional][readonly] |
| **supported_versions_to_upgrade** | **Array&lt;String&gt;** | Major versions of PostgreSQL database engine to which this version can be automatically upgraded. | [optional][readonly] |
| **supported_features** | [**Array&lt;SupportedFeature&gt;**](SupportedFeature.md) | Features supported. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerVersionCapability.new(
  status: null,
  reason: null,
  name: null,
  supported_versions_to_upgrade: null,
  supported_features: null
)
```


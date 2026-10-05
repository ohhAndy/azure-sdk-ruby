# AzureRest::SupportedFeature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the feature. | [optional][readonly] |
| **status** | [**FeatureStatus**](FeatureStatus.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SupportedFeature.new(
  name: null,
  status: null
)
```


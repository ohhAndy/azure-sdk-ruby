# AzureRest::CorsRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cors_rules** | [**Array&lt;CorsRule&gt;**](CorsRule.md) | The List of CORS rules. You can include up to five CorsRule elements in the request. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CorsRules.new(
  cors_rules: null
)
```


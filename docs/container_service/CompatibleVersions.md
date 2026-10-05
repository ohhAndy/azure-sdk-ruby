# AzureRest::CompatibleVersions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The product/service name. | [optional] |
| **versions** | **Array&lt;String&gt;** | Product/service versions compatible with a service mesh add-on revision. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CompatibleVersions.new(
  name: null,
  versions: null
)
```


# AzureRest::AutomaticSkuMigrationPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether automatic SKU migration should be enabled on the virtual machine scale set. The default value is false. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AutomaticSkuMigrationPolicy.new(
  enabled: null
)
```


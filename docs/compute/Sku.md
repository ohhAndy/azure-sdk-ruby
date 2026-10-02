# AzureSDK::Sku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The sku name. | [optional] |
| **tier** | **String** | Specifies the tier of virtual machines in a scale set.&lt;br /&gt;&lt;br /&gt; Possible Values:&lt;br /&gt;&lt;br /&gt; **Standard**&lt;br /&gt;&lt;br /&gt; **Basic** | [optional] |
| **capacity** | **Integer** | Specifies the number of virtual machines in the scale set. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Sku.new(
  name: null,
  tier: null,
  capacity: null
)
```


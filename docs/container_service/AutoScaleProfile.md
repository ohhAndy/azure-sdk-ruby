# AzureSDK::AutoScaleProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **String** | VM size that AKS will use when creating and scaling e.g. &#39;Standard_E4s_v3&#39;, &#39;Standard_E16s_v3&#39; or &#39;Standard_D16s_v5&#39;. | [optional] |
| **min_count** | **Integer** | The minimum number of nodes of the specified sizes. | [optional] |
| **max_count** | **Integer** | The maximum number of nodes of the specified sizes. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AutoScaleProfile.new(
  size: null,
  min_count: null,
  max_count: null
)
```


# AzureSDK::ManualScaleProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **String** | VM size that AKS will use when creating and scaling e.g. &#39;Standard_E4s_v3&#39;, &#39;Standard_E16s_v3&#39; or &#39;Standard_D16s_v5&#39;. | [optional] |
| **count** | **Integer** | Number of nodes. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManualScaleProfile.new(
  size: null,
  count: null
)
```


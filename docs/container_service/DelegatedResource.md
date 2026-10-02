# AzureSDK::DelegatedResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | The ARM resource id of the delegated resource - internal use only. | [optional] |
| **tenant_id** | **String** | The tenant id of the delegated resource - internal use only. | [optional] |
| **referral_resource** | **String** | The delegation id of the referral delegation (optional) - internal use only. | [optional] |
| **location** | **String** | The source resource location - internal use only. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DelegatedResource.new(
  resource_id: null,
  tenant_id: null,
  referral_resource: null,
  location: null
)
```


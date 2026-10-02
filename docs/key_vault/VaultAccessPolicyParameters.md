# AzureSDK::VaultAccessPolicyParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource id of the access policy. | [optional][readonly] |
| **name** | **String** | The resource name of the access policy. | [optional][readonly] |
| **type** | **String** | The resource name of the access policy. | [optional][readonly] |
| **location** | **String** | The resource type of the access policy. | [optional][readonly] |
| **properties** | [**VaultAccessPolicyProperties**](VaultAccessPolicyProperties.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VaultAccessPolicyParameters.new(
  id: null,
  name: null,
  type: null,
  location: null,
  properties: null
)
```


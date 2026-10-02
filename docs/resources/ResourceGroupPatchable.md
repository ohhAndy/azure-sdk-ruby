# AzureSDK::ResourceGroupPatchable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the resource group. | [optional] |
| **properties** | [**ResourceGroupProperties**](ResourceGroupProperties.md) |  | [optional] |
| **managed_by** | **String** | The ID of the resource that manages this resource group. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | The tags attached to the resource group. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResourceGroupPatchable.new(
  name: null,
  properties: null,
  managed_by: null,
  tags: null
)
```


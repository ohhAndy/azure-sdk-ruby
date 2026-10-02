# AzureSDK::ResourceNavigationLinkFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_resource_type** | **String** | Resource type of the linked resource. | [optional] |
| **link** | **String** | Link to the external resource. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResourceNavigationLinkFormat.new(
  linked_resource_type: null,
  link: null,
  provisioning_state: null
)
```

